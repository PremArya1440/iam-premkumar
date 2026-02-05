#1/bin/bash
###special varibkes #####

echo "All arguments passed to the script: $@"
echo "Number of arguments passed to the script: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Who is running the script: $USER"
echo "Home directory of the user: $HOME"
echo "PID of the current script: $$"
sleep 100 &
echo "PID of the last background command: $!"
echo "All arguments as a single string: $*"