import pandas as pd
from matplotlib import pyplot as plt
 
# Read CSV into pandas
data = pd.read_csv("international_ratings.csv")
data.head()
df = pd.DataFrame(data)
  
rating = df['rating']
num_international = df['number_international_films']
   
# Figure Size
fig = plt.figure(figsize =(10, 7))
    
# Horizontal Bar Plot
plt.bar(rating[0:13], num_international[0:13])

# Set labels and title
plt.xlabel('Rating')
plt.ylabel('Number of International TV Shows / Movies')
plt.title('Number of International TV Shows / Movies per Rating (1954-2021)')
     
# Show Plot
plt.show()
