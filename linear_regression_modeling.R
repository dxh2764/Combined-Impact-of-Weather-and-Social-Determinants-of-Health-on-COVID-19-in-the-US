library(caret)
library(dplyr)

# NOTE: Update the following line to retrieve "tableau_data_with_diffs.csv"
data <- read.csv(file = 'data/tableau_data_with_diffs.csv')

model_cases_all <- lm(case_diffs ~ . - date - county - state - deaths - death_diffs - cases, data = data)
model_deaths_all <- lm(death_diffs ~ . - date - county - state - cases - case_diffs - deaths, data = data)

# models created with backward stepwise regression
model_cases_significant <- step(model_cases_all, direction = "backward")
model_deaths_significant <- step(model_deaths_all, direction = "backward")

set.seed(125)
train_control <- trainControl(method = "cv", number = 5)
# cross validation of models with all independent variables using 5 folds
cv_cases <- train(formula(model_cases_all$call), data = data, method = "lm", trControl = train_control)
cv_deaths <- train(formula(model_deaths_all$call), data = data, method = "lm", trControl = train_control)

print(cv_cases)
print(cv_cases$resample)

print(cv_deaths)
print(cv_deaths$resample)