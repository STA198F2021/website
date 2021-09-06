#Import JHU GitHub data
confirmedraw <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv")

names(confirmedraw) # Check latest date variable name at end of data

deathsraw <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv")
recoveredraw <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv")

dim(confirmedraw)
dim(deathsraw) 
dim(recoveredraw) #note differences in number of rows

#Data cleaning
confirmed <- confirmedraw %>%
  gather(key = "date",
         value = "confirmed",-c(Country.Region, Province.State, Lat, Long)) %>%
  group_by(Country.Region, date) %>%
  summarize(confirmed = sum(confirmed))

deaths <- deathsraw %>% 
  gather(key="date", value="deaths", -c(Country.Region, Province.State, Lat, Long)) %>% 
  group_by(Country.Region, date) %>% 
  summarize(deaths=sum(deaths))


recovered <- recoveredraw %>% gather(key="date", value="recovered", -c(Country.Region, Province.State, Lat, Long)) %>% 
  group_by(Country.Region, date) %>% 
  summarize(recovered=sum(recovered))

country <- full_join(confirmed, deaths) %>% full_join(recovered)

# oops, we see where that dates are not formatted as we'd like
country %>%
  arrange(Country.Region,date)

# convert to standard date format
country$date <- country$date %>% 
  sub("X", "", .) %>% as.Date("%m.%d.%y")



