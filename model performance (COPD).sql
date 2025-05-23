-- Model 1 – Threshold 0.5
SELECT
  'Model 1' AS model,
  0.5 AS threshold,
  CASE 
    WHEN COUNT(*) = 0 THEN NULL
    ELSE COUNT(*) FILTER (WHERE dp.prediction_confirmed_as_true) * 100.0 / COUNT(*)
  END AS confirmation_percentage
FROM diagnosis_predictions dp
JOIN diagnosis_descriptions dd
  ON dp.diagnosis_code = dd.diagnosis_code
WHERE dd.disease_category = 'Chronic Obstructive Pulmonary Disease'
  AND dp.prediction_model_1_score >= 0.5

UNION ALL

-- Model 1 – Threshold 0.7
SELECT
  'Model 1' AS model,
  0.7 AS threshold,
  CASE 
    WHEN COUNT(*) = 0 THEN NULL
    ELSE COUNT(*) FILTER (WHERE dp.prediction_confirmed_as_true) * 100.0 / COUNT(*)
  END AS confirmation_percentage
FROM diagnosis_predictions dp
JOIN diagnosis_descriptions dd
  ON dp.diagnosis_code = dd.diagnosis_code
WHERE dd.disease_category = 'Chronic Obstructive Pulmonary Disease'
  AND dp.prediction_model_1_score >= 0.7

UNION ALL

-- Model 1 – Threshold 0.9
SELECT
  'Model 1' AS model,
  0.9 AS threshold,
  CASE 
    WHEN COUNT(*) = 0 THEN NULL
    ELSE COUNT(*) FILTER (WHERE dp.prediction_confirmed_as_true) * 100.0 / COUNT(*)
  END AS confirmation_percentage
FROM diagnosis_predictions dp
JOIN diagnosis_descriptions dd
  ON dp.diagnosis_code = dd.diagnosis_code
WHERE dd.disease_category = 'Chronic Obstructive Pulmonary Disease'
  AND dp.prediction_model_1_score >= 0.9

UNION ALL

-- Model 2 – Threshold 0.5
SELECT
  'Model 2' AS model,
  0.5 AS threshold,
  CASE 
    WHEN COUNT(*) = 0 THEN NULL
    ELSE COUNT(*) FILTER (WHERE dp.prediction_confirmed_as_true) * 100.0 / COUNT(*)
  END AS confirmation_percentage
FROM diagnosis_predictions dp
JOIN diagnosis_descriptions dd
  ON dp.diagnosis_code = dd.diagnosis_code
WHERE dd.disease_category = 'Chronic Obstructive Pulmonary Disease'
  AND dp.prediction_model_2_score >= 0.5

UNION ALL

-- Model 2 – Threshold 0.7
SELECT
  'Model 2' AS model,
  0.7 AS threshold,
  CASE 
    WHEN COUNT(*) = 0 THEN NULL
    ELSE COUNT(*) FILTER (WHERE dp.prediction_confirmed_as_true) * 100.0 / COUNT(*)
  END AS confirmation_percentage
FROM diagnosis_predictions dp
JOIN diagnosis_descriptions dd
  ON dp.diagnosis_code = dd.diagnosis_code
WHERE dd.disease_category = 'Chronic Obstructive Pulmonary Disease'
  AND dp.prediction_model_2_score >= 0.7

UNION ALL

-- Model 2 – Threshold 0.9
SELECT
  'Model 2' AS model,
  0.9 AS threshold,
  CASE 
    WHEN COUNT(*) = 0 THEN NULL
    ELSE COUNT(*) FILTER (WHERE dp.prediction_confirmed_as_true) * 100.0 / COUNT(*)
  END AS confirmation_percentage
FROM diagnosis_predictions dp
JOIN diagnosis_descriptions dd
  ON dp.diagnosis_code = dd.diagnosis_code
WHERE dd.disease_category = 'Chronic Obstructive Pulmonary Disease'
  AND dp.prediction_model_2_score >= 0.9;



