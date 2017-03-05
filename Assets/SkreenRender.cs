using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections.Generic;

public class SkreenRender : MonoBehaviour {

    public Settings settings;
    [Serializable]
    public class Settings {
        public int width;
        public int height;
        public Color backgroundColor;
        public Color textColor;
        public SkreenDataSet data;
        [Range(0f, 3f)]
        public float brightness;
    }

    Skreen skreen;
    Texture2D map;
    Material mat;
    public Color32[] colorbuffer;
    Dictionary<char, int> bindings_char_int = new Dictionary<char, int>(256);
    Dictionary<int, char> bindings_int_char = new Dictionary<int, char>(256);

    public List<string> lines = new List<string>();
    void Awake() {
        map = new Texture2D(settings.width, settings.height, TextureFormat.RGB24, false, false);
        map.filterMode = FilterMode.Point;
        
        mat = new Material(Shader.Find("Skreen/01"));
        var renderer = GetComponent<Renderer>();
        renderer.material = mat;

        mat.SetColor("_ScreenBackgroundColor", settings.backgroundColor);
        mat.SetColor("_TextColor", settings.textColor);
        mat.SetTexture("_Map", map);
        mat.SetTexture("_Atlas", settings.data.Atlas1);
        mat.SetFloat("_Brightness", settings.brightness);
        mat.SetFloat("_ScreenWidth", settings.width);
        mat.SetFloat("_ScreenHeight", settings.height);

        int count = settings.data.bindings.Count;
        for (int i = 0; i < count; i++) {
            bindings_char_int.Add(settings.data.bindings[i].Character, settings.data.bindings[i].R_value);
            bindings_int_char.Add(settings.data.bindings[i].R_value, settings.data.bindings[i].Character);
        }

        colorbuffer = new Color32[settings.width];
        
    }

    void Start() {
        if(lines.Count == 0) {
            lines.Add("Lorem Ipsum is simply dummy text of the printing and typesetting industry.");
            lines.Add("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,");
            lines.Add("when an unknown printer took a galley of type and scrambled it to make a type specimen book.");
            lines.Add("It has survived not only five centuries, but also the leap into electronic typesetting,");
            lines.Add("remaining essentially unchanged.");
            lines.Add("It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,");
            lines.Add("and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.");

        }
        skreen = new Skreen(settings.width);
        skreen.Dirty += Redraw;
        skreen.AddLine(display);
    }

    void Redraw(Skreen skreen) {
        int linesCount = skreen.Lines;
        int screenLine = 0;
        for (int i = 0 + skreen.CursorY; i < linesCount; i++) {
            DrawLine(skreen.GetLine(i));
            map.SetPixels32(0,settings.height - screenLine - 1, settings.width, 1, colorbuffer);
            screenLine++;
        }
        map.Apply();
    }

    void DrawLine(char[] line) {
        for (int i = 0; i < settings.width; i++) {
            colorbuffer[i].r = (byte)getValueFor(line[i]);
        }
    }

    int getValueFor(char c) {
        int val = 255;
        bindings_char_int.TryGetValue(c, out val);
        return val;
    }
}
