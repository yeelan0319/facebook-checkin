import pandas as pd
import numpy as np

csv_data = pd.read_csv('rawdata/train.csv', header = 0, delimiter=',')
indece_90_percent = int(csv_data.shape[0] * 0.9)

training_df = pd.DataFrame(csv_data)
training_df = training_df.reindex(np.random.permutation(training_df.index))

# samples = random.sample(training_df, 5)

training_df[:indece_90_percent].to_csv('data/training.csv')
training_df[indece_90_percent:].to_csv('data/testing.csv')

