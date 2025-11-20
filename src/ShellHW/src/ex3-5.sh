#!/bin/bash
run_ls() {
  eval "ls $*"
}
run_ls "$@"
