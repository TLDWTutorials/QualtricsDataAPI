library(qualtRics)

#Enter API info: API Key and base_url
qualtrics_api_credentials(api_key = "XnMwsXVb87TTGikMRGaaEEHNt5tJbr2vdHRTrYCi", 
                          base_url = "ca1.qualtrics.com/")

#This fetches a list of all of your surveys (you can print this - optional)
surveys <- all_surveys() 

#Set Time Zone
Sys.setenv(TZ = "GMT")

#Select survey to download
mysurvey <- fetch_survey(surveyID = "SV_1zvPT4k7DJ3tGvQ")

# Save responses to a CSV file
write.csv(mysurvey, file = "anonymous_survey.csv", row.names = FALSE)

