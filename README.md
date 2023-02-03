# AWS DMS CDC Workshop

_Notes:_

- Run in the N. Virginia region (us-east-1);

## Running CloudFormation

1. Download file: [template](./iac/cdc_rds_s3.yaml)
2. Open the CloudFormation console at https://console.aws.amazon.com/cloudformation
3. Upload template file

## Loading data sample

Connect to the bastion with **EC2 Instance Connect** and execute the commands bellow:

```bash
sudo yum update -y
sudo yum install mariadb -y
wget https://raw.githubusercontent.com/gabrielmartinigit/dms-cdc-workshop/main/sql/datasample.sql
mysql -h <host> -P 3306 -u <user> -p
source /home/ec2-user/datasample.sql
```

```sql
SHOW databases;
USE classicmodels;
SELECT * FROM customers;
```

## DMS Full Load and CDC

Follow the instructor to setup DMS.

Check [examples](./sql/examples.sql) of SQL queries to see changes in target.

## Links and References

- AWS DMS CDC Documentation: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html
- AWS DMS S3 Endpoint: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html
- AWS DMS CDC control number of files: https://aws.amazon.com/premiumsupport/knowledge-center/dms-cdc-files-target-s3/
- AWS RDS MySql binlogs: https://aws.amazon.com/premiumsupport/knowledge-center/dms-cdc-error-1236-msql/
- Apache Iceberg upsert: https://aws.amazon.com/blogs/big-data/implement-a-cdc-based-upsert-in-a-data-lake-using-apache-iceberg-and-aws-glue/
