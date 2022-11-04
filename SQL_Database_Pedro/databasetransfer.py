## Dependencies
from sqlalchemy import create_engine
from config import db_password
import time
import pandas as pd

db_string = f"postgresql://postgres:{db_password}@127.0.0.1:5432/csidb"

#import database from csv
data = pd.read_csv("Resources/Cleaned_DDos_DataFrame.csv")
print(data)

# Create connection to database
engine = create_engine(db_string)

# Transfer data from dataframes to SQL Database
df.to_sql(name='flows', con=engine, if_exists='replace')
df.to_sql(name='packets', con=engine, if_exists='replace')
df.to_sql(name='time', con=engine, if_exists='replace')