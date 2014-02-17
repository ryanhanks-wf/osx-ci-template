
# run chef

create image to build ci tester
build ci tester
reboots with start partition of ci test runner partition
auto reboot after x
record screen
post install screencap


ci test runner
watches osx-ci-template branches
read/write data to shared partition


partitions
15 Data
  /Library - OS X Installer, X Code
  /Test - Test Run Data
Test Runner Recovery Partition (Dev from here)
35 Test Runner - Build a new CI partition and run a CI test on it
10 Test Runner OS X Mavericks Install
35 Macintosh HD - (Test) - Book and run ci test on a branch on a repo


Test that these nodes can pull in a big sky config and run appium tests in them

test that we can build a node to run ci node builder tests


build the installer for the ci runner
