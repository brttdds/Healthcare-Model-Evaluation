CREATE TABLE diagnosis_predictions (
    person_id TEXT,
    medical_record_id TEXT,
    diagnosis_code TEXT,
    prediction_model_1_score FLOAT,
    prediction_model_2_score FLOAT,
    prediction_confirmed_as_true INT
);

-- Create table for diagnosis descriptions
CREATE TABLE diagnosis_descriptions (
    diagnosis_code TEXT,
    diagnosis_desc TEXT,
    disease_category TEXT
);