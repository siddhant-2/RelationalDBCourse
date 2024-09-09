#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
if [[ -z $1 ]]
then
  echo 'Please provide an element as an argument.'
else
  if [[ ! $1 =~ ^[0-9]+$ ]]
  then
    atom=$($PSQL "select atomic_number,symbol,name from elements where symbol='$1' or name='$1'")
    if [[ -z $atom ]]
    then 
      echo 'I could not find that element in the database.'
    else
      echo "$atom" | while read atomic_number BAR symbol BAR name
      do
        atomic_mass=$($PSQL "select atomic_mass from properties where atomic_number=$atomic_number")
        mp_celsius=$($PSQL "select melting_point_celsius from properties where atomic_number=$atomic_number")
        bp_celsius=$($PSQL "select boiling_point_celsius from properties where atomic_number=$atomic_number")
        type_id=$($PSQL "select type_id from properties where atomic_number=$atomic_number")
        type=$($PSQL "select type from types where type_id=$type_id")
        echo "The element with atomic number $atomic_number is $name ($symbol). It's a $(echo $type | sed -r 's/^ *| *$//g'), with a mass of $(echo $atomic_mass | sed -r 's/^ *| *$//g') amu. $name has a melting point of $(echo $mp_celsius | sed -r 's/^ *| *$//g') celsius and a boiling point of $(echo $bp_celsius | sed -r 's/^ *| *$//g') celsius."
      done
    fi
  else
    atom=$($PSQL "select atomic_number,symbol,name from elements where atomic_number=$1")
    if [[ -z $atom ]]
    then 
      echo 'I could not find that element in the database.'
    else
      echo "$atom" | while read atomic_number BAR symbol BAR name
      do
        atomic_mass=$($PSQL "select atomic_mass from properties where atomic_number=$atomic_number")
        mp_celsius=$($PSQL "select melting_point_celsius from properties where atomic_number=$atomic_number")
        bp_celsius=$($PSQL "select boiling_point_celsius from properties where atomic_number=$atomic_number")
        type_id=$($PSQL "select type_id from properties where atomic_number=$atomic_number")
        type=$($PSQL "select type from types where type_id=$type_id")
        echo "The element with atomic number $atomic_number is $name ($symbol). It's a $(echo $type | sed -r 's/^ *| *$//g'), with a mass of $(echo $atomic_mass | sed -r 's/^ *| *$//g') amu. $name has a melting point of $(echo $mp_celsius | sed -r 's/^ *| *$//g') celsius and a boiling point of $(echo $bp_celsius | sed -r 's/^ *| *$//g') celsius."
      done
    fi
  fi
fi