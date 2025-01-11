import boto3
from datetime import datetime, timedelta

client = boto3.client('ce')

def fetch_cost_data():
    end_date = datetime.now().strftime('%Y-%m-%d')
    start_date = (datetime.now() - timedelta(days=30)).strftime('%Y-%m-%d')
    
    response = client.get_cost_and_usage(
        TimePeriod={'Start': start_date, 'End': end_date},
        Granularity='MONTHLY',
        Metrics=['UnblendedCost'],
        GroupBy=[{'Type': 'DIMENSION', 'Key': 'SERVICE'}]
    )
    
    for group in response['ResultsByTime'][0]['Groups']:
        service = group['Keys'][0]
        cost = group['Metrics']['UnblendedCost']['Amount']
        print(f"Service: {service}, Cost: ${cost}")

if __name__ == "__main__":
    fetch_cost_data()
