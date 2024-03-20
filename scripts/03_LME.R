# LME

source(here('scripts', 'Other_Functions.R'))
data <- load_processed_data_all_conditions()
data_long <- load_processed_data_all_conditions_long()

# Figure Parameters
source(here('scripts', 'Figure_Parameters.R'))

# Models

model_1 <- lmer(data = data_long, Trust ~ Condition * Block * Confidence + (1 | Participant))
summary(model_1)
tab_model(model_1)

model_2 <- lmer(data = data_long, Trust ~ Condition * Block * Confidence + (1 | Condition))
summary(model_2)
tab_model(model_2)

model_3 <- lmer(data = data_long, Trust ~ Condition * Block * Confidence + (1 | Participant) + (1 | Condition))
summary(model_3)
tab_model(model_3)

model_4 <- lmer(data = data_long, Trust ~ Condition * Reliability * Confidence + (1 | Participant))
summary(model_4)
tab_model(model_4)

model_5 <- lmer(data = data_long, Trust ~ Condition * as.factor(Reliability) * Confidence + (1 | Condition))
summary(model_5)
tab_model(model_5)

model_6 <- lmer(data = data_long, Trust ~ Condition * Reliability * Confidence + (1 | Participant) + (1 | Condition))
summary(model_6)
tab_model(model_6)
# 

model_7 <- lmer(data = data_long, Performance_Before ~ Condition * Reliability * Confidence + (1 | Participant) + (1 | Condition))
summary(model_7)
tab_model(model_7)

model_8 <- lmer(data = data_long, Reliance ~ Trust * Condition * Reliability * Confidence + (1 | Participant) )

# model_7 <- lmer(data = data_long, Trust ~ Condition * Reliability * Confidence * Reliance + (1 | Participant))
# summary(model_7)
# tab_model(model_7)
# 
# model_8 <- lmer(data = data_long, Reliance ~ Condition * Reliability * Confidence * Trust + (1 | Participant))
# summary(model_8)
# tab_model(model_8)