#!/bin/bash
trg_plugin() {
    FLAG_STALK="/tmp/backup_started_timestamp"
    [[ -f $FLAG_STALK && -s $FLAG_STALK ]] && { let time_run=$(date +%s)-$(< $FLAG_STALK) ; echo $time_run ; exit ; } || { echo 0 ; exit ; } 
}
