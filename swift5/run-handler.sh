#!/bin/sh
 
/opt/swift-shared-libs/ld-linux-x86-64.so.2 --library-path /opt/swift-shared-libs/lib $LAMBDA_TASK_ROOT/$EXECUTABLE $_HANDLER
