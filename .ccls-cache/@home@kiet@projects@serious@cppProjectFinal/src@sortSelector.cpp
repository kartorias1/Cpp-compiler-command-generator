// #include "quitButton.cpp"
#include <ftxui/component/component.hpp>
#include <ftxui/component/component_options.hpp>
#include <ftxui/component/screen_interactive.hpp>
#include <ftxui/dom/elements.hpp>
#include <iostream>
#include <vector>

using namespace std;
using namespace ftxui;

void sortMenu() {
  auto menuScreen = ScreenInteractive::Fullscreen();

  int selected = 0;

  vector<string> entries = {"Quick sort", "Another sort"};

  auto menu = Menu(&entries, &selected);

  auto menuDecor = Renderer(menu, [&] {
    return hbox(
        filler(),
        vbox(filler(), window(text("Sorting type"), menu->Render()), filler()),
        filler());
  });

  // quit on q button
  // auto menuRenderer = quitButton(menuDecor, menuScreen);

  menuScreen.Loop(menuDecor);
}
