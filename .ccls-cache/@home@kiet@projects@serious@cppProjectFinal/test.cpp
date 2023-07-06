#include <iostream>
#include <stdlib.h>
using namespace std;
int main() {
  if (system("\0"))
    cout << "Command Processor is present";
  else
    cout << "Command processor is not present ";
  return 0;
}
