using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections.Generic;
using System.Collections;

public class SkreenRender : MonoBehaviour {

    public Settings settings;
    [Serializable]
    public class Settings {
        public Color backgroundColor;
        public Color textColor;
        public SkreenDataSet data;
        [Range(0f, 3f)]
        public float brightness;
        public Texture2D pixel;
    }
    ISkreenProgram program;
    Texture2D map;
    Material mat;
    public Color32[] colorbuffer;
    Dictionary<char, int> bindings_char_int = new Dictionary<char, int>(256);
    Dictionary<int, char> bindings_int_char = new Dictionary<int, char>(256);

    public List<string> lines = new List<string>();
    void Awake() {
        StartCoroutine(Initialize());
    }

    IEnumerator Initialize() {
        for (;;) {
            if (program == null) {
                program = gameObject.GetInterface<ISkreenProgram>();
                if (program == null) {
                    Debug.LogError("Controlling program was not found!");
                    gameObject.SetActive(false);
                    yield break;
                }
                if (program.skreen == null) {
                    yield return null;
                    continue;
                }
            }
            program.skreen.Dirty += Redraw;
            map = new Texture2D(program.skreen.Width, program.skreen.Height, TextureFormat.RGB24, false, false);
            map.filterMode = FilterMode.Point;

            mat = new Material(Shader.Find("Skreen/01"));
            var renderer = GetComponent<Renderer>();
            renderer.material = mat;

            mat.SetColor("_ScreenBackgroundColor", settings.backgroundColor);
            mat.SetColor("_TextColor", settings.textColor);
            mat.SetTexture("_Map", map);
            mat.SetTexture("_Atlas", settings.data.Atlas1);
            mat.SetTexture("_Pixel", settings.pixel);
            mat.SetFloat("_Brightness", settings.brightness);
            mat.SetFloat("_ScreenWidth", program.skreen.Width);
            mat.SetFloat("_ScreenHeight", program.skreen.Height);
            mat.SetFloat("_PixelHeight", settings.data.PixelPerCharHeight * program.skreen.Height);
            mat.SetFloat("_PixelWidth", settings.data.PixelPerCharWidth * program.skreen.Width);

            int count = settings.data.bindings.Count;
            for (int i = 0; i < count; i++) {
                bindings_char_int.Add(settings.data.bindings[i].Character, settings.data.bindings[i].R_value);
                bindings_int_char.Add(settings.data.bindings[i].R_value, settings.data.bindings[i].Character);
            }

            colorbuffer = new Color32[program.skreen.Width];
            Redraw(program.skreen);
            yield break;
        }
    }

    void Redraw(Skreen skreen) {
        int linesCount = skreen.Lines;
        int screenLine = 0;
        for (int i = 0 + skreen.CursorY; i < linesCount; i++) {
            DrawLine(skreen.GetLine(i));
            map.SetPixels32(0, program.skreen.Height - screenLine - 1, program.skreen.Width, 1, colorbuffer);
            screenLine++;
        }
        map.Apply();
    }

    void DrawLine(char[] line) {
        for (int i = 0; i < program.skreen.Width; i++) {
            colorbuffer[i].r = (byte)getValueFor(line[i]);
        }
    }

    int getValueFor(char c) {
        int val = 255;
        bindings_char_int.TryGetValue(c, out val);
        return val;
    }
}
