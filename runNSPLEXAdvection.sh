#!/usr/bin/env bash

executable='./nsplex'

declare -A flag_args

flag_args[ceed]=/cpu/self/ref/serial
flag_args[problem]=advection2d
flag_args[dm_plex_box_faces]=20,20 # Mesh resolution
flag_args[petscspace_degree]=3
flag_args[CtauS]=.3
flag_args[ksp_atol]=1e-5
flag_args[snes_type]=ksponly
flag_args[stab]=none
flag_args[ts_adapt_dt_max]=.01 
flag_args[ts_max_time]=1 
flag_args[ts_exact_final_time]=matchstep
flag_args[ts_type]=rosw

args=''
echo 'FLAG ARGUMENTS'
for flag_arg in "${!flag_args[@]}"; do
    if ! [[ -z ${flag_args[$flag_arg]} ]]; then
        echo "${flag_arg} = ${flag_args[$flag_arg]}" 
        args="$args -$flag_arg ${flag_args[$flag_arg]}"
    fi
done


# miscelaneous args
args="$args -naturalz -ts_monitor -dm_view -implicit -snes_mf -ts_view"

echo $args

$executable $args $@
