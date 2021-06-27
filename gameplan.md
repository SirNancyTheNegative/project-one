So here I'm going to document the steps I am planning to take in order to help deal with the data we have better. This isn't going to have specifics in it, but it's going to have the way I'm thinking of making the data nicer to work with, so it can be used with fewer hassles in the future.

1.  Take the Greenhouse Gases inventory data csv, drop the "category" column, sum up the like values for each country and year, and save it as a new CSV so that, if we still need to, we can break it up by type of greenhouse gas by using the old one.
2.  Transpose the data for environmental temperature change such that each year is its own row, and the countries are the different columns.
3.  Split this new dataframe by country, effectively having the new dataframe look like:

|Country  |Year|Temp Change|
|---------|----|-----------|
|Country 1|1990|-1.01      |
|Country 1|1991|0.98       |
|Country 1|1992|-0.03      |
|...      |... |...        |
|Country 2|1990|999.99     |
|...      |... |...        |
|...      |... |...        |
|Country F|2019|-420.24    |

4. With the environmental dataframe in this form, we can better merge the data from the Greenhouse Gases inventory data csv with it and use that for whatever purpose we need it to serve.

My goal is to get this done in a timely manner so we can actually do supervised machine learning work.
