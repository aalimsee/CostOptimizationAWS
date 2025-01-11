import boto3

cloudwatch = boto3.client('cloudwatch')

def analyze_metrics(instance_id):
    response = cloudwatch.get_metric_statistics(
        Namespace="AWS/EC2",
        MetricName="CPUUtilization",
        Dimensions=[{"Name": "InstanceId", "Value": instance_id}],
        StartTime="2025-01-01T00:00:00Z",
        EndTime="2025-01-10T23:59:59Z",
        Period=3600,
        Statistics=["Average"]
    )
    
    for data_point in response['Datapoints']:
        print(f"Time: {data_point['Timestamp']}, CPU Usage: {data_point['Average']}%")

if __name__ == "__main__":
    analyze_metrics("your_instance_id")
