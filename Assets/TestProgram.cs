using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections.Generic;

public class TestProgram : MonoBehaviour, ISkreenProgram {
    public Skreen.Settings settings;

    private Skreen _skreen;
    public Skreen skreen
    {
        get {
            return _skreen;
        }
    }

    void Awake() {
        _skreen = new Skreen(settings);
        skreen.AddLine("Lorem Ipsum is simply dummy text of the printing and typesetting industry.");
        skreen.AddLine("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,");
        skreen.AddLine("when an unknown printer took a galley of type and scrambled it to make a type specimen book.");
        skreen.AddLine("It has survived not only five centuries, but also the leap into electronic typesetting,");
        skreen.AddLine("remaining essentially unchanged.");
        skreen.AddLine("It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,");
        skreen.AddLine("and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.");
    }
}


