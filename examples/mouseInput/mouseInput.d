import termbox;

import std.stdio;
import std.random;

void main() {
    init();

    setInputMode(InputMode.esc | InputMode.mouse);

    Color[] colors = [
        Color.default_,
        Color.black,
        Color.red,
        Color.green,
        Color.yellow,
        Color.blue,
        Color.magenta,
        Color.cyan,
        Color.white
    ];

    Event e;
    do {
        flush();

        pollEvent(&e);

        if (e.key == Key.mouseLeft) {
            setCell(e.x, e.y, '█', colors[uniform(0, colors.length)], Color.default_);
        }
    } while (e.key != Key.esc);

    shutdown();
}