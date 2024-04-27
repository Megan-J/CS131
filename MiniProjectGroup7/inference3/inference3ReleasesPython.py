import matplotlib.pyplot as plt
import csv

# Load data from CSV file
data = []
with open('international_releases.csv') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        data.append(row)

# Extract data lists
years = [int(row['year']) for row in data]
number_films = [int(row['number_international_films_released']) for row in data]

# Create line graph
plt.figure(figsize=(10, 6))
plt.plot(years, number_films, marker='o', linestyle='-')

# Set labels and title
plt.xlabel('Year')
plt.ylabel('Number of International TV Shows / Movies Released')
plt.title('Number of International TV Shows / Movies Released Over the Years (1954-2021)')

# Rotate x-axis labels for better readability
plt.xticks(rotation=45)

# Show plot
plt.grid(True)
plt.tight_layout()
plt.show()
