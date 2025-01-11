import boto3

def fetch_cost_data():
    client = boto3.client('ce')
    response = client.get_cost_and_usage(
        TimePeriod={'Start': '2025-01-01', 'End': '2025-01-31'},
        Granularity='DAILY',
        Metrics=['BlendedCost']
    )
    print(response)

if __name__ == "__main__":
    fetch_cost_data()
