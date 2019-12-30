#!/bin/bash

function selectcar {

select car in bmw mercedes tesla rover toyota
  do
    case $car in
      bmw)
        echo "you selected bmw";exit;;
      mercedes)
        echo "you selected mercedes";;
      tesla)
        echo "you selected tesla";;
      rover)
        echo "you selected rover";;
      toyota)
        echo "you selected toyota";;
      *)
        echo " please select between 1 to 5";;
    esac
  done
}
 echo "Please press any key to continue"
   while [ true ]
      do
       read -t 3 -n 1
        if [ $? = 0 ]
          then
            selectcar
          else
           echo " waiting for you to to press any key "
        fi
      done
