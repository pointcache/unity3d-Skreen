using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections.Generic;

public class SkreenDataSet : ScriptableObject {

    public Texture2D Atlas1;
    public int PixelPerCharWidth = 7, PixelPerCharHeight = 14;

    public List<CharBind> bindings = new List<CharBind>()
    {
        new CharBind(0,' '),
        new CharBind(1, 'a'),
        new CharBind(2, 'b'),
        new CharBind(3, 'c'),
        new CharBind(4, 'd'),
        new CharBind(5, 'e'),
        new CharBind(6, 'f'),
        new CharBind(7, 'g'),
        new CharBind(8, 'h'),
        new CharBind(9, 'i'),
        new CharBind(10, 'j'),
        new CharBind(11, 'k'),
        new CharBind(12, 'l'),
        new CharBind(13, 'm'),
        new CharBind(14, 'n'),
        new CharBind(15, 'o'),
        new CharBind(16, 'p'),
        new CharBind(17, 'q'),
        new CharBind(18, 'r'),
        new CharBind(19, 's'),
        new CharBind(20, 't'),
        new CharBind(21, 'u'),
        new CharBind(22, 'v'),
        new CharBind(23, 'w'),
        new CharBind(24, 'x'),
        new CharBind(25, 'y'),
        new CharBind(26, 'z'),
        new CharBind(27,'✕'),
        new CharBind(28, 'A'),
        new CharBind(29, 'B'),
        new CharBind(30, 'C'),
        new CharBind(31, 'D'),
        new CharBind(32, 'E'),
        new CharBind(33, 'F'),
        new CharBind(34, 'G'),
        new CharBind(35, 'H'),
        new CharBind(36, 'I'),
        new CharBind(37, 'J'),
        new CharBind(38, 'K'),
        new CharBind(39, 'L'),
        new CharBind(40, 'M'),
        new CharBind(41, 'N'),
        new CharBind(42, 'O'),
        new CharBind(43, 'P'),
        new CharBind(44, 'Q'),
        new CharBind(45, 'R'),
        new CharBind(46, 'S'),
        new CharBind(47, 'T'),
        new CharBind(48, 'U'),
        new CharBind(49, 'V'),
        new CharBind(50, 'W'),
        new CharBind(51, 'X'),
        new CharBind(52, 'Y'),
        new CharBind(53, 'Z'),
        new CharBind(54, '0'),
        new CharBind(55, '1'),
        new CharBind(56, '2'),
        new CharBind(57, '3'),
        new CharBind(58, '4'),
        new CharBind(59, '5'),
        new CharBind(60, '6'),
        new CharBind(61, '7'),
        new CharBind(62, '8'),
        new CharBind(63, '9'),
        new CharBind(64, '.'),
        new CharBind(65, ','),
        new CharBind(66, ':'),
        new CharBind(67, ';'),
        new CharBind(68, '\''),
        new CharBind(69, '"'),
        new CharBind(70, '('),
        new CharBind(71, '!'),
        new CharBind(72, '?'),
        new CharBind(73, ')'),
        new CharBind(74, '+'),
        new CharBind(75, '-'),
        new CharBind(76, '*'),
        new CharBind(77, '/'),
        new CharBind(78, '='),
        //new CharBind(79, ':'),

    };

    [Serializable]
    public class CharBind {
        public int R_value;
        public char Character;

        public CharBind(int red, char character) {
            R_value = red;
            Character = character;
        }
    }

}
