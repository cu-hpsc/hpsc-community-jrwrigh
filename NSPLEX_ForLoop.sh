#!/usr/bin/env bash

executable='./nsplex'
logDir=./runlogs

declare -A flag_args

flag_args[ceed]=/cpu/self/ref/serial
flag_args[problem]=advection2d
flag_args[dm_plex_box_faces]=10,10 # Mesh resolution
flag_args[petscspace_degree]=2
flag_args[CtauS]=.3
flag_args[ksp_atol]=1e-5
flag_args[snes_type]=ksponly
flag_args[stab]=none
flag_args[ts_adapt_dt_max]=.01 
flag_args[ts_max_time]=1 
flag_args[ts_exact_final_time]=matchstep
flag_args[ts_type]=rosw

degree=1
for meshres in {65..65..5}; do
    echo "Running degree=$degree and meshres=$meshres"
    flag_args[petscspace_degree]=$degree
    flag_args[dm_plex_box_faces]=$meshres,$meshres

    args=''
    echo 'FLAG ARGUMENTS' &>> $logDir/${degree}_${meshres}.log
    for flag_arg in "${!flag_args[@]}"; do
        if ! [[ -z ${flag_args[$flag_arg]} ]]; then
            echo "${flag_arg} = ${flag_args[$flag_arg]}" &>> $logDir/${degree}_${meshres}.log
            args="$args -$flag_arg ${flag_args[$flag_arg]}"
        fi
    done
    # miscelaneous args
    args="$args -naturalz -ts_monitor -dm_view -implicit -snes_mf -ts_view"

    echo $args &>> $logDir/${degree}_${meshres}.log

    $executable $args &>> $logDir/${degree}_${meshres}.log
done

degree=2
for meshres in {35..40..5}; do
    echo "Running degree=$degree and meshres=$meshres"
    flag_args[petscspace_degree]=$degree
    flag_args[dm_plex_box_faces]=$meshres,$meshres

    args=''
    echo 'FLAG ARGUMENTS' &>> $logDir/${degree}_${meshres}.log
    for flag_arg in "${!flag_args[@]}"; do
        if ! [[ -z ${flag_args[$flag_arg]} ]]; then
            echo "${flag_arg} = ${flag_args[$flag_arg]}" &>> $logDir/${degree}_${meshres}.log
            args="$args -$flag_arg ${flag_args[$flag_arg]}"
        fi
    done


    # miscelaneous args
    args="$args -naturalz -ts_monitor -dm_view -implicit -snes_mf -ts_view"

    echo $args &>> $logDir/${degree}_${meshres}.log

    $executable $args &>> $logDir/${degree}_${meshres}.log
done

degree=3
for meshres in {24..28..4}; do
    echo "Running degree=$degree and meshres=$meshres"
    flag_args[petscspace_degree]=$degree
    flag_args[dm_plex_box_faces]=$meshres,$meshres

    args=''
    echo 'FLAG ARGUMENTS' &>> $logDir/${degree}_${meshres}.log
    for flag_arg in "${!flag_args[@]}"; do
        if ! [[ -z ${flag_args[$flag_arg]} ]]; then
            echo "${flag_arg} = ${flag_args[$flag_arg]}" &>> $logDir/${degree}_${meshres}.log
            args="$args -$flag_arg ${flag_args[$flag_arg]}"
        fi
    done


    # miscelaneous args
    args="$args -naturalz -ts_monitor -dm_view -implicit -snes_mf -ts_view"

    echo $args &>> $logDir/${degree}_${meshres}.log

    $executable $args &>> $logDir/${degree}_${meshres}.log
done
