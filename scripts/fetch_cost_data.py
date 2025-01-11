import boto3

def fetch_cost_data():
    client = boto3.client('ce')  # AWS Cost Explorer
    response = client.get_cost_and_usage(
        TimePeriod={
            'Start': '2025-01-01',
            'End': '2025-01-31'
        },
        Granularity='MONTHLY',
        Metrics=['BlendedCost']
    )
    return response['ResultsByTime']

# Example of calling the function
data = fetch_cost_data()
print(data)
