#!/bin/bash
awk '{print $1,$2,$3}' Roulette_Losses > Notes_Player_Analysis
grep 'Mylie Schmidt' | wc -l Roulette_Losses > Notes_Player_Analysis