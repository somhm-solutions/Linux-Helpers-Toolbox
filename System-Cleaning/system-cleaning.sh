# Check Memory
free;

# Check Process using most memory
top;        # Press 'm' to sort by memory 
            # (OR)
            # Use ps aux and sort by mem, Pipe to aux for printing
ps aux --sort=-%mem | awk 'NR<=10{print $0}';

# Check current dir(s) for 10 Largest files sorted by disk usage(block size)
du -h . -d=2 | sort -nr | head -n10;
                                    # du = disk usage
                                        # -sh = show human readable
                                        # . = start in current working dir
                                        # -d=2 = max recursive depth of 1 directories

# Check current dir(s) for 10 Largest Folders sorted by disk usage(block size)
du -h * -d=2 | sort -nr | head -n10;

# Find Any file bigger than $SIZE (in k)
SIZE=200000k                            # 20mb
START='/var/log/'
find $START -type f -size $SIZEk -exec ls -lh {} \; 2> /dev/null | awk '{ print $NF ": " $5 }'  | sort -hrk 2,2

# Compress large file or folders
sudo tar -cjvf $CREATE_NAME $COMPRESS_NAME;

# Write over large file/folder with nothing
echo 1> $NAME;

# Kill process consuming to much memory
pkill $PROCCESS_ID;
# (OR)
killall $PROCESS_NAME;