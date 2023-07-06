// Name: Vo Tuan Kiet
// Student Id: 123210118
// Class: 21ES

#include "ftxui/component/component.hpp"
#include "ftxui/component/component_base.hpp"
#include "ftxui/component/component_options.hpp"
#include "ftxui/component/event.hpp"
#include "ftxui/component/screen_interactive.hpp"
#include "ftxui/dom/elements.hpp"
#include <fstream>
#include <string.h>

#include <vector>

using namespace ftxui;
using namespace std;

int main() {

  auto screen = ScreenInteractive::Fullscreen();

  // Header
  Element header = text("C++ COMPILER COMMAND GENERATOR") | center | inverted;

  // Compiler select
  const vector<string> compiler_entries = {
      "g++",
  };
  int compiler_selected = 0;
  Component compiler = Radiobox(&compiler_entries, &compiler_selected);

  // Compiler options
  string options_label[8] = {
      "-Wall",
      "-Werror",
      "-lpthread",
      "-O3",
      "-Wabi-tag",
      "-Wno-class-conversion",
      "-Wcomma-subscript",
      "-Wno-conversion-null",
  };
  array<bool, 8> options_state = {
      false, false, false, false, false, false, false, false,
  };
  Component flags = Container::Vertical({
      Checkbox(&options_label[0], &options_state[0]),
      Checkbox(&options_label[1], &options_state[1]),
      Checkbox(&options_label[2], &options_state[2]),
      Checkbox(&options_label[3], &options_state[3]),
      Checkbox(&options_label[4], &options_state[4]),
      Checkbox(&options_label[5], &options_state[5]),
      Checkbox(&options_label[6], &options_state[6]),
      Checkbox(&options_label[7], &options_state[7]),
  });

  // Input files
  vector<string> input_entries;
  int input_selected = 0;
  Component input = Menu(&input_entries, &input_selected);
  auto input_option = InputOption();
  string input_add_content;
  input_option.on_enter = [&] {
    input_entries.push_back(input_add_content);
    input_add_content = "";
  };
  Component input_add = Input(&input_add_content, "input files", input_option);

  // Add executable name
  string executablecontent = "";
  Component executable = Input(&executablecontent, "executable");

  // For execute script
  string script_line = "";

  // Generated command by changes
  auto render_command = [&] {
    Elements line;

    script_line.clear();

    // Compiler
    line.push_back(text(compiler_entries[compiler_selected]) | bold);
    script_line += compiler_entries[compiler_selected];

    // Flags
    for (int i = 0; i < 8; ++i) {
      if (options_state[i]) {
        line.push_back(text(" "));
        line.push_back(text(options_label[i]) | dim);

        script_line += (" " + options_label[i]);
      }
    }
    // Executable
    if (!executablecontent.empty()) {
      line.push_back(text(" -o ") | bold);
      line.push_back(text(executablecontent) | color(Color::BlueLight) | bold);

      script_line += (" -o " + executablecontent);
    };
    // Input
    for (auto &it : input_entries) {
      line.push_back(text(" " + it) | color(Color::RedLight));

      script_line += (" " + it);
    }
    return line;
  };

  // Execute generated command
  Component submit_button =
      Button("Submit!", [&] { screen.ExitLoopClosure()(); });

  // Component layout
  auto compiler_component = Container::Vertical({
      Container::Horizontal({
          compiler,
          flags,
          Container::Vertical({
              executable,
              Container::Horizontal({
                  input_add,
                  input,
              }),
          }),
      }),
      submit_button,
  });

  // Main renderer
  auto compiler_renderer = Renderer(compiler_component, [&] {
    // Component decoration
    auto compiler_win = window(text("Compiler"),
                               compiler->Render() | vscroll_indicator | frame);
    auto flags_win =
        window(text("Flags"), flags->Render() | vscroll_indicator | frame);
    auto executablewin = window(text("Executable:"), executable->Render());
    auto input_win =
        window(text("Input"), hbox({
                                  vbox({
                                      hbox({
                                          text("Add: "),
                                          input_add->Render(),
                                      }) | size(WIDTH, EQUAL, 20) |
                                          size(HEIGHT, EQUAL, 1),
                                      filler(),
                                  }),
                                  separator(),
                                  input->Render() | vscroll_indicator | frame |
                                      size(HEIGHT, EQUAL, 3),
                              }));
    auto submit_but = submit_button->Render() | size(WIDTH, EQUAL, 10) | center;

    return hbox({
        filler(),
        vbox({
            header,
            separatorEmpty(),
            hbox({
                filler(),
                compiler_win,
                flags_win,
                vbox({
                    executablewin | size(WIDTH, EQUAL, 20),
                    input_win | size(WIDTH, EQUAL, 60),
                }),
                filler(),
            }) | size(HEIGHT, LESS_THAN, 8),
            hflow(render_command()) | flex_grow,
            submit_but,
            filler(),
        }) | flex_grow,
        filler(),
    });
  });

  // Exit on q button
  auto main_renderer = CatchEvent(compiler_renderer, [&](Event event) {
    if (event == Event::Character("q")) {
      screen.ExitLoopClosure()();
      return true;
    }
    return false;
  });

  screen.Loop(main_renderer);

  // Run command
  char script_line_converted[script_line.length()];
  strcpy(script_line_converted, script_line.c_str());
  system(script_line_converted);

  // Logging into history file
  ofstream hist_file;
  hist_file.open("../history_command");
  hist_file << script_line << endl;
  hist_file.close();
}
