import boto3
import csv

s3 = boto3.client('s3')

def generate_report(bucket_name):
    report_data = [
        ["Service", "Cost ($)"],
        ["EC2", 120.0],
        ["S3", 45.0],
        ["Lambda", 15.0]
    ]
    
    with open("monthly_report.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerows(report_data)
    
    s3.upload_file("monthly_report.csv", bucket_name, "monthly_report.csv")
    print("Report uploaded to S3.")

if __name__ == "__main__":
    generate_report("cost-optimization-reports")
