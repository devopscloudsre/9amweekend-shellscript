username=$(cat password|grep user|awk -F"=" '{print $2}')

password=$(cat password|grep password|awk -F"=" '{print $2}')
dbName=flipkart
echo "Below command will run and take mysql backup.."
echo "mysqldump -u$username -p$password -hflipkart.aws.rds.com $dbName > $dbName.sql"
