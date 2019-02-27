#!/bin/sh
BASEDIR=$(dirname $0)
cd $BASEDIR

for i in `seq 0 1`;
do
    yesterday_str=`date -j -vJulm -v28d -v2018y -v-${i}d +%Y-%m-%d`
    file_str="${yesterday_str//-/}"
    file="/Users/jianhuitian/carrot/logistics/logistics-data-science/conversion_model_v1/lost_deliveries_v4/data/user_lost_deliveries_${file_str}_${file_str}.pkl"

    while [ ! -e "$file" ]; do
        python score_per_user.py --start_date "$yesterday_str" --end_date "$yesterday_str"
    done

    echo "$yesterday_str"
done

start_date="2018-04-16"
end_date="2018-05-13"

python score_per_user.py --start_date "$start_date" --end_date "$end_date"
