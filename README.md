# spotify-ETL-project

For this project, the objective was to obtain two large datasets, extract the data, transform it, and then load the data into a datavbase. 

In order to achieve this objective, I worked with two different types of data. 

The first dataset that I extracted was this [Kaggle](https://www.kaggle.com/rodolfofigueroa/spotify-12m-songs?select=tracks_features.csv) csv dataset with over 1.2 million Spotify songs listed. I then transformed the Spotify data by removing excess columns and converting columns to different formats.

The second dataset that I extracted was using the Billboard API ([documentation found here](https://github.com/guoguo12/billboard-charts)). By installing billboard.py, I was able to extract the Billboard Hot-100 to find the current top 100 songs (updated every Tuesday). 

After extracting and transforming this data, I loaded both tables into a database by using Postgres to create the schema and connected to the database using pandas. In order to load the dataframes into the database, I converted my saved dataframes to SQL so that I could query it from Jupyter Notebook. 

Further investigation:
- I'd like to join the two datasets, however because the Spotify dataset is so large and there are repeats of song names, the join is a bit more complicated. If there is time, I will work on this. 
- In an ideal world, I'd add a column called running pace, where I would assign the following categories to their respective tempo:
  - Warm up/cooldown = 80-140bmp
  - Moderate = 141-150bpm
  - Fast = 151+ bpm
- This would allow me to filter the songs in the table by tempo, which would then allow me to choose the best songs for a 30 min run or similar. 
- Finally, if I really have time, I would use the Spotify API to create a playlist with total length 30 mins with approx 2 warm up songs, 4 moderate songs, 2 fast songs, and 2 cooldown songs. 
