import boto3

ec2 = boto3.client('ec2')

def stop_unused_instances():
    instances = ec2.describe_instances(Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])
    
    for reservation in instances['Reservations']:
        for instance in reservation['Instances']:
            instance_id = instance['InstanceId']
            print(f"Stopping instance: {instance_id}")
            ec2.stop_instances(InstanceIds=[instance_id])

if __name__ == "__main__":
    stop_unused_instances()
