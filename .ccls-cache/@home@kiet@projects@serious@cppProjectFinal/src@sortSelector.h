#include <ftxui/component/component.hpp>
#include <ftxui/component/component_options.hpp>
#include <ftxui/component/screen_interactive.hpp>
#include <iostream>
#include <vector>

using namespace std;
using namespace ftxui;

Component sortMenu() {

  auto menuScreen = ScreenInteractive::Fullscreen();

  int selected = 0;

  vector<string> entries = {"Quick sort", "Another sort"};

  MenuOption options;
  options.on_enter = menuScreen.ExitLoopClosure();

  auto menu = Menu(&entries, &selected) | border;
  // return Renderer(menu, [&] { return hbox(menu); });

  return menu;
  // menuScreen.Loop(menu);
}
