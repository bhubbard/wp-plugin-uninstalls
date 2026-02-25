-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('credit_calc', 'credit_calc_rate', 'loan_calculator_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_phone', '_full_name', '_amount', '_term', '_status', '_monthly_payment', '_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_phone', '_full_name', '_amount', '_term', '_status', '_monthly_payment', '_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_phone', '_full_name', '_amount', '_term', '_status', '_monthly_payment', '_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_phone', '_full_name', '_amount', '_term', '_status', '_monthly_payment', '_date');

