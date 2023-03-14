## CHOCOLATE CHIP COOKIE RECIPE 

# === define all parameters === #
multiplier=$1
numServing=`expr 10 \* $multiplier`




# ingredients
numButter=`expr 120 \* $multiplier`
numBrownSugar=`expr 75 \* $multiplier`
numCasterSugar=`expr 75 \* $multiplier`
numEgg=`expr 1 \* $multiplier`
numVanilla=`expr 1 \* $multiplier`
numFlour=`expr 180 \* $multiplier`
# numSoda=$((0.5*$multiplier | bc))
numSoda=$(echo "0.5*$multiplier"|bc )
numChocolate=`expr 150 \* $multiplier`
numSalt=$(echo "0.25*$multiplier"|bc )



# make a copy from the template recipe to the same directory
cp ./sec3_template_cookierecipe.txt ./cookierecipe_$numServing.txt

echo "Creating Recipe of $numServing Chocolate Chip Cookies \n file will be saving at $PWD/cookierecipe_$numServing.txt" 

# 
sed -i "s/<numServing>/${numServing}/g" ./cookierecipe_$numServing.txt  # serving
sed -i "s/<date>/$(date +'%Y-%m-%d %H:%M')/g" ./cookierecipe_$numServing.txt  # serving

sed -i "s/<numButter>/${numButter}/g" ./cookierecipe_$numServing.txt # butter

sed -i "s/<numBrownSugar>/${numBrownSugar}/g" ./cookierecipe_$numServing.txt # brown sugar

sed -i "s/<numCasterSugar>/${numCasterSugar}/g" ./cookierecipe_$numServing.txt # caster sugar

sed -i "s/<numEgg>/${numEgg}/g" ./cookierecipe_$numServing.txt # egg

sed -i "s/<numVanilla>/${numVanilla}/g" ./cookierecipe_$numServing.txt # vanilla extract 

sed -i "s/<numFlour>/${numFlour}/g" ./cookierecipe_$numServing.txt # flour

sed -i "s/<numSoda>/${numSoda}/g" ./cookierecipe_$numServing.txt # soda 

sed -i "s/<numChocolate>/${numChocolate}/g" ./cookierecipe_$numServing.txt # chocolate chip

sed -i "s/<numSalt>/${numSalt}/g" ./cookierecipe_$numServing.txt # salt


