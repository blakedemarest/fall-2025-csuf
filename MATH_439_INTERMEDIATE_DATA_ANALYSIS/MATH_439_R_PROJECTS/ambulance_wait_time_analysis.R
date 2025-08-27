# =============================================================================
# PROBLEM STATEMENT:
# =============================================================================
# An ambulance company is legally required to respond to distress calls within 
# 14 minutes 90% of the time. For this analysis, we are testing whether the 
# average response time exceeds 10 minutes (a simplified compliance threshold).
#
# A judge has ordered n = 300 records to be examined to assess compliance.
# 
# HYPOTHESIS TEST:
# H_0: μ ≤ 10  (Company is compliant - average wait time is at most 10 minutes)
# H_a: μ > 10  (Company is non-compliant - average wait time exceeds 10 minutes)
#
# This is a one-tailed (right-tailed) test.
# =============================================================================

# Clear workspace
rm(list = ls())

# =============================================================================
# 1. LOAD THE DATA
# =============================================================================

# Load the wait time data
# Note: Adjust the path if waittime.csv is in a different location
waittime_data <- read.csv("waittime.csv")

# Explore the structure of the data
str(waittime_data)
head(waittime_data)
summary(waittime_data)

# Check sample size
n <- nrow(waittime_data)
cat("Sample size:", n, "\n")

# =============================================================================
# 2. EXPLORATORY DATA ANALYSIS
# =============================================================================

# The wait time variable is named 'x' (in minutes)
wait_times <- waittime_data$x

# Calculate descriptive statistics
mean_wait <- mean(wait_times, na.rm = TRUE)
sd_wait <- sd(wait_times, na.rm = TRUE)
se_wait <- sd_wait / sqrt(n)

cat("\nDescriptive Statistics:\n")
cat("Mean wait time:", round(mean_wait, 2), "minutes\n")
cat("Standard deviation:", round(sd_wait, 2), "minutes\n")
cat("Standard error:", round(se_wait, 3), "minutes\n")

# Histogram
hist(wait_times, 
     main = "Distribution of Ambulance Wait Times",
     xlab = "Wait Time (minutes)",
     col = "lightblue",
     breaks = 30)
abline(v = mean_wait, col = "red", lwd = 2)
abline(v = 10, col = "darkgreen", lwd = 2, lty = 2)
legend("topright", 
       legend = c("Sample Mean", "H₀: μ = 10"),
       col = c("red", "darkgreen"),
       lty = c(1, 2),
       lwd = 2)

# =============================================================================
# 3. HYPOTHESIS TEST (ONE-SAMPLE T-TEST)
# =============================================================================

# Parameters
mu_0 <- 10  # Null hypothesis value
alpha <- 0.05  # Significance level

# Perform one-sample t-test (right-tailed)
t_test <- t.test(wait_times, 
                 mu = mu_0, 
                 alternative = "greater",
                 conf.level = 1 - alpha)

# Display test results
cat("\nHYPOTHESIS TEST RESULTS\n")
cat(paste(rep("=", 40), collapse = ""), "\n")
cat("Null Hypothesis (H₀): μ ≤", mu_0, "minutes\n")
cat("Alternative Hypothesis (H_a): μ >", mu_0, "minutes\n")
cat("\nTest Statistic (t):", round(t_test$statistic, 3), "\n")
cat("Degrees of freedom:", t_test$parameter, "\n")
cat("P-value:", format(t_test$p.value, scientific = FALSE), "\n")

# =============================================================================
# 4. CONFIDENCE INTERVAL
# =============================================================================

cat("\nCONFIDENCE INTERVAL\n")
cat(paste(rep("-", 40), collapse = ""), "\n")

# For a one-sided test (greater), we get a one-sided CI with lower bound
cat("95% One-sided CI: [", round(t_test$conf.int[1], 2), ", ∞) minutes\n")
cat("Interpretation: We are 95% confident that the true mean\n")
cat("wait time is at least", round(t_test$conf.int[1], 2), "minutes.\n")

# Also calculate a two-sided CI for comparison
t_test_two <- t.test(wait_times, mu = mu_0, conf.level = 0.95)
cat("\n95% Two-sided CI: [", round(t_test_two$conf.int[1], 2), ",", 
    round(t_test_two$conf.int[2], 2), "] minutes\n")
cat("(This shows the range of plausible values for the true mean)\n")

# =============================================================================
# 5. DECISION AND INTERPRETATION
# =============================================================================

cat("\nDECISION (α =", alpha, ")\n")
cat(paste(rep("-", 40), collapse = ""), "\n")

if (t_test$p.value < alpha) {
  cat("REJECT H₀\n")
  cat("Conclusion: The ambulance company is NON-COMPLIANT.\n")
  cat("Average wait time significantly exceeds 10 minutes.\n")
} else {
  cat("FAIL TO REJECT H₀\n")
  cat("Conclusion: Insufficient evidence of non-compliance.\n")
}

# =============================================================================
# END OF ANALYSIS
# =============================================================================