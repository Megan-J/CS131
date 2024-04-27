import pandas as pd
import seaborn as sns

#reading data into pandas dataframe
seasons = pd.read_csv("numSeasons_inf2.txt")
mins = pd.read_csv("numMins_inf2.txt")

#plot 1 duration in minutes versus release date
sns.lineplot(data=mins, x="release_date", y="duration_mins")
plot = sns.lineplot(data=mins, x="release_date", y="duration_mins", color="green")
plot.set_title("Duration of Movies and Release Dates")
plot.set_ylabel("Duration of Content")
plot.set_xlabel("Year of Release")

#getting minutes in duration after the year 2008
minsAfter2010 = mins[mins["release_date"] > 2008]

#plot 2 duration in mins versus release date after 2008 with line showing tiktok release date
plot = sns.lineplot(data=minsAfter2010, x="release_date", y="duration_mins", color ="green")
plot.set_title("Duration of Movies Before and After Release of Tik Tok")
plot.axvline(x=2017, color="red")
plot.set_ylabel("Duration of Content")
plot.set_xlabel("Year of Release")

#plot 3 duration in seasons versus release date
plot = sns.lineplot(data=seasons, x="release_date", y="duration_seasons", color = "black")
plot.set_title("Duration of Movies in Seasons")
plot.set_ylabel("Duration of Content")
plot.set_xlabel("Year of Release")
