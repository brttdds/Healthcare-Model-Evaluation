# Predictive Model Evaluation
This project analyzes the performance of two predictive models using a healthcare dataset containing 350,000+ diagnosis predictions and 4,000+ diagnosis descriptions. Using a local PostgreSQL database set up via pgAdmin, I queried the data to explore model behavior and created a visualization to showcase model performance using COPD (Chronic Obstructive Pulmonary Disease) predictions.

Tools used:
Excel, PostgreSQL, pgAdmin 4, SQL, ChatGPT, PowerPoint.

Key Insight: 
By analyzing COPD-related predictions across confidence thresholds (0.5, 0.7, 0.9), Model 2 outperformed Model 1 in accuracy, achieving 100% confirmation at 0.7 — but it made no predictions at 0.9, indicating a trade-off between precision and prediction coverage.

Questions Explored:

1. **Most common diagnosis code:**  
   → E119 (Type 2 diabetes without complication)

2. **Unique people with confirmed Vascular Disease:**  
   → 2,617

3. **People with confirmed diagnoses in both COPD and Specified Heart Arrhythmias:**  
   → 757

4. **Percent of confirmed COPD predictions (Model 1, threshold ≥ 0.5):**  
   → 59.66%

5. **People with confirmed COPD or Arrhythmias AND unconfirmed Diabetes predictions:**  
   → 2197

Note:
Due to privacy restrictions, the original healthcare dataset cannot be shared. A small mock dataset is included for demonstration purposes only.
