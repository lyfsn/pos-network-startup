
current_utc_timestamp=$(date -u +%s)
file_path="config-example/values.env"
sed -i "s/GENESIS_TIMESTAMP=[0-9]*/GENESIS_TIMESTAMP=$current_utc_timestamp/" $file_path
