Python 3.13.12 (tags/v3.13.12:1cbe481, Feb  3 2026, 18:22:25) [MSC v.1944 64 bit (AMD64)] on win32
Enter "help" below or click "Help" above for more information.
import pandas as pd
ad_spend = pd.read_excel(r"C:\Users\Hari\Downloads\Multi_Touch_Marketing_Attribution_Dataset.xlsx",sheet_name="Ad_Spend")
user_journey = pd.read_excel(r"C:\Users\Hari\Downloads\Multi_Touch_Marketing_Attribution_Dataset.xlsx",sheet_name="User_Journey")
conversions = pd.read_excel(r"C:\Users\Hari\Downloads\Multi_Touch_Marketing_Attribution_Dataset.xlsx",sheet_name="Conversions")
>>> ad_spend.drop_duplicates(inplace=True)
>>> user_journey.drop_duplicates(inplace=True)
>>> conversions.drop_duplicates(inplace=True)
>>> isnull().sum()
KeyboardInterrupt
>>> ad_spend.isnull().sum()
Compaign_Date    0
Channel          0
Campaign         0
Spend            0
Clicks           0
Impressions      0
dtype: int64
>>> user_journey.isnull().sum()
User_ID       0
Event_Time    0
Channel       0
Campaign      0
Event         0
dtype: int64
>>> conversions.isnull().sum()
User_ID            0
Conversion_Date    0
Revenue            0
dtype: int64
