-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('einvmylhdn_api_key', 'einvmylhdn_api_secret', 'einvmylhdn_myinvois_tin', 'einvmylhdn_company_name', 'einvmylhdn_company_email', 'einvmylhdn_company_phone', 'einvmylhdn_identification_number', 'einvmylhdn_identification_scheme', 'einvmylhdn_tin', 'einvmylhdn_sst_registration', 'einvmylhdn_tourism_tax_registration', 'einvmylhdn_industry_classification_code', 'einvmylhdn_industry_classification_name', 'einvmylhdn_street_address', 'einvmylhdn_city_name', 'einvmylhdn_state_code', 'einvmylhdn_postal_zone', 'einvmylhdn_country_code', 'einvmylhdn_enable_logging', 'einvmylhdn_default_classification_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('einvoice_id_type', 'einvoice_id_number', 'einvoice_tin_number', 'einvoice_sst_number', '_einvmylhdn_use_global_classification', '_einvmylhdn_classification_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('einvoice_id_type', 'einvoice_id_number', 'einvoice_tin_number', 'einvoice_sst_number', '_einvmylhdn_use_global_classification', '_einvmylhdn_classification_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('einvoice_id_type', 'einvoice_id_number', 'einvoice_tin_number', 'einvoice_sst_number', '_einvmylhdn_use_global_classification', '_einvmylhdn_classification_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('einvoice_id_type', 'einvoice_id_number', 'einvoice_tin_number', 'einvoice_sst_number', '_einvmylhdn_use_global_classification', '_einvmylhdn_classification_code');

