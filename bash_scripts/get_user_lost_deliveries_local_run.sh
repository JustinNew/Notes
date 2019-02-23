#!/bin/sh
BASEDIR=$(dirname $0)
cd $BASEDIR

for yesterday_str in '2018-07-27' '2018-07-26';
do
    file_str="${yesterday_str//-/}"
    file="/Users/jianhuitian/carrot/logistics/logistics-data-science/conversion_model_v1/lost_deliveries_v4/data/preco_sessions_cleaned_${file_str}_${file_str}.pkl"

    while [ ! -e "$file" ]; do
        python get_data_checkout.py --start_date "$yesterday_str" --end_date "$yesterday_str" &&
        python get_data_precheckout.py --start_date "$yesterday_str" --end_date "$yesterday_str" &&
        python prepare_data_checkout.py --start_date "$yesterday_str" --end_date "$yesterday_str" &&
        python prepare_data_precheckout.py --start_date "$yesterday_str" --end_date "$yesterday_str"
    done

    echo "$yesterday_str"
done
