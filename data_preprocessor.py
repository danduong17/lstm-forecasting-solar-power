import matplotlib.pyplot as plt
import pandas as pd

"""
First, we create an object called df which is assigned to values from a file dataset. 
Then, the 2nd line is used to extract the values of the “AC Power” column from a pandas DataFrame object named “df” and store them in a numpy array named “timeseries”. 
The “.values” attribute returns a numpy array of the values in the DataFrame and “.astype(‘float32’)” converts the data type of the array to float32. 
This is useful when working with machine learning models that require float32 data type.
"""
df = pd.read_csv('solar-system-2.csv')
timeseries = df[["AC Power"]].values.astype('float32')

plt.plot(timeseries)
plt.show()

# train-test split for time series
train_size = int(len(timeseries) * 0.67)
test_size = len(timeseries) - train_size
train, test = timeseries[:train_size], timeseries[train_size:]