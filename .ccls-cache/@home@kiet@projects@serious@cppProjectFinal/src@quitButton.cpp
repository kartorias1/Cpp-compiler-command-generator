#include <ftxui/component/component.hpp>
#include <ftxui/component/screen_interactive.hpp>
#include <ftxui/dom/elements.hpp>
#include <ftxui/screen/screen.hpp>

using namespace ftxui;

Component quitButton(Component &givenRenderer, ScreenInteractive &givenScreen) {

  auto newRenderer = CatchEvent(givenRenderer, [&](Event event) {
    if (event == Event::Character('q')) {
      givenScreen.ExitLoopClosure()();
      return true;
    }
    return false;
  });

  return newRenderer;
}
