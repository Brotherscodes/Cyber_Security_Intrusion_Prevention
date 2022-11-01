## Dependencies
from sqlalchemy import create_engine
from config import db_password
import time

#




db_string = f"postgresql://postgres:{db_password}@127.0.0.1:5432/csidb"

# Create connection to database
engine = create_engine(db_string)


# Dataframes to SQL Database
df.to_sql(name='table1', con=engine, if_exists='replace')
df.to_sql(name='table2', con=engine, if_exists='replace')
df.to_sql(name='table3', con=engine, if_exists='replace')