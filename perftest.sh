host="fabmedical-535518.mongo.cosmos.azure.com"
username="fabmedical-535518"
password="jTsky5maVawfj9m7XSXQhuwyRcovqQapztdXRvW1i4MpDJCGCDnxBc1oIfVcQPDWrFl2R2EkEaah4V3XEux2Rg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done