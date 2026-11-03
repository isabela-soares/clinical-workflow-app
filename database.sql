-- Example Schema: Clinical Management System

CREATE TABLE patients (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    created_at TIMESTAMP WITH TIMEZONE DEFAULT NOW(),
    patient_code VARCHAR(50) NOT NULL UNIQUE,
    status VARCHAR(20) DEFAULT 'active'
);

CREATE TABLE appointments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    patient_id UUID REFERENCES patients(id),
    appointment_date TIMESTAMP WITH TIMEZONE NOT NULL,
    status VARCHAR(20) DEFAULT 'scheduled'
);
