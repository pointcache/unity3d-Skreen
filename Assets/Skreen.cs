using UnityEngine;
using System;
using System.Collections.Generic;
using System.Collections;

[Serializable]
public class Skreen {
    public int CursorX { get { return cursor.pos_x; } }
    public int CursorY { get { return cursor.pos_y; } }
    public int Width { get { return width; } }
    public int Lines { get { return lines.Count; } }
    public Action<Skreen> Dirty = delegate { };


    int width;
    Cursor cursor;
    List<Line> lines = new List<Line>();

    public Skreen(int _width) {
        width = _width;
        cursor = new Cursor();
    }

    public char[] GetLine(int index) {
        return lines[index].contents;
    }

    public void AddLine(string line) {
        addLine(line, true);
    }

    void addLine(string line, bool setDirty) {
        Line l1 = new Line(width);
        l1.SetTo(line);
        lines.Add(l1);
        if(setDirty)
            SetDirty();
    }

    public void AddLines(List<string> lines) {
        int count = lines.Count;
        for (int i = 0; i < count; i++) {
            addLine(lines[i], false);
        }
        SetDirty();
    }

    void SetDirty() {
        cursor.CheckBounds(this);
        Dirty(this);
    }

    [Serializable]
    public class Line {
        public char[] contents;

        public Line(int size) {
            contents = new char[size];
        }

        public void SetTo(string str) {
            int count = contents.Length;
            int strLenght = str.Length;
            for (int i = 0; i < count; i++) {
                if (i >= strLenght)
                    contents[i] = ' ';
                else {

                    contents[i] = str[i];
                }
                
            }
        }
    }

    [Serializable]
    public class Cursor {
        public int pos_x, pos_y;

        public void CheckBounds(Skreen skreen) {
            pos_x = Mathf.Clamp(pos_x, 0, skreen.width);
            pos_y = Mathf.Clamp(pos_x, 0, skreen.lines.Count);
        }
    }
}
