# Qualtrics Survey Data Downloader

This repository provides a simple R script for downloading survey data from Qualtrics using the `qualtRics` package.

## Prerequisites

Before running the script, ensure you have the following:
- **R installed** (https://cran.r-project.org/)
- **RStudio (optional but recommended)** (https://posit.co/download/rstudio-desktop/)
- **The `qualtRics` package** installed in R:
  ```r
  install.packages("qualtRics")
  ```

## Setup

### 1. Configure API Credentials
To connect to your Qualtrics account, you need your **API key** and **base URL**. Replace `YOURAPIKEYHERE` and `ca1.qualtrics.com` with your own credentials.

```r
library(qualtRics)

# Enter API info: API Key and Base URL
qualtrics_api_credentials(api_key = "YOURAPIKEYHERE",
                          base_url = "ca1.qualtrics.com/")
```

### 2. Fetch Available Surveys
This command retrieves a list of all your available surveys. You can print the result to identify the Survey ID you want to download.

```r
# Fetch all surveys
surveys <- all_surveys()
print(surveys)
```

### 3. Set Time Zone

```r
Sys.setenv(TZ = "GMT")
```

### 4. Download a Specific Survey
Once you have identified your `SurveyID`, replace `SURVEYIDHERE` with the actual survey ID and run the command below to fetch responses.

```r
# Select survey to download
mysurvey <- fetch_survey(surveyID = "SURVEYIDHERE")
```

### 5. Save Survey Data to CSV
Save the survey responses to a CSV file for further analysis.

```r
write.csv(mysurvey, file = "anonymous_survey.csv", row.names = FALSE)
```

## Additional Notes
- Ensure that your Qualtrics account has API access enabled.
- Some surveys might require additional authentication or permissions to download responses.
- If you encounter issues, check your Qualtrics API settings and ensure your API key is valid.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
