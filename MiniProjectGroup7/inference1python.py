import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv('inference1.csv')

years = data['year']
same_release = data['sameRelease']
different_release = data['differentRelease']

plt.figure(figsize=(10, 6))
plt.bar(years, same_release, color='b', width=0.4, label='Same Release Year')
plt.bar(years + 0.4, different_release, color='r', width=0.4, label='Different Release Year')
plt.xlabel('Year')
plt.ylabel('Number of Added TV Shows/Movies')
plt.title('Comparison of Added TV Shows/Movies Over Time')
plt.xticks(years)
plt.legend()
plt.tight_layout()
plt.show()
