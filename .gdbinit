set environment LD_LIBRARY_PATH /usr/local/lib64:$LD_LIBRARY_PATH
set environment LD_PRELOAD /home/deadpool/HUNTER-REPO/MadFS/build-release/libmadfs.so
set breakpoint pending on
set environment trace_file /usr/local/leveldb/workloads/loada_1M
b madfs_ctor

r --type MWUL --ncore 1 --nbg 0 --duration 10 --directio 0 --root /mnt/pmem0 --profbegin "/home/deadpool/HUNTER-REPO/tests/tools/fxmark/bin/perfmon.py start" --profend "/home/deadpool/HUNTER-REPO/tests/tools/fxmark/bin/perfmon.py stop" --proflog /tmp/pmem-local.madfs.MWUL.1.pm --filesys madfs --pid 1262595 --pidfile /home/deadpool/HUNTER-REPO/tests/tools/fxmark/bin/pid.txt --delegation_threads 0 --delegation_sockets 0 --delegate 0 --rcore 0