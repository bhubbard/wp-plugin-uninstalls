-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_mnnt_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mnnt_genre', '_mnnt_date_of_birth', '_mnnt_company_name', '_mnnt_phone_number', '_mnnt_state', '_mnnt_country', '_mnnt_address', '_mnnt_lostpassword_token', '_mnnt_lostpassword_token_expires', '_mnnt_name', 'first_name', '_mnnt_surname', 'last_name', '_mnnt_default_acceptance_doc_id', '_mnnt_secondary_acceptance_doc_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mnnt_genre', '_mnnt_date_of_birth', '_mnnt_company_name', '_mnnt_phone_number', '_mnnt_state', '_mnnt_country', '_mnnt_address', '_mnnt_lostpassword_token', '_mnnt_lostpassword_token_expires', '_mnnt_name', 'first_name', '_mnnt_surname', 'last_name', '_mnnt_default_acceptance_doc_id', '_mnnt_secondary_acceptance_doc_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mnnt_genre', '_mnnt_date_of_birth', '_mnnt_company_name', '_mnnt_phone_number', '_mnnt_state', '_mnnt_country', '_mnnt_address', '_mnnt_lostpassword_token', '_mnnt_lostpassword_token_expires', '_mnnt_name', 'first_name', '_mnnt_surname', 'last_name', '_mnnt_default_acceptance_doc_id', '_mnnt_secondary_acceptance_doc_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mnnt_genre', '_mnnt_date_of_birth', '_mnnt_company_name', '_mnnt_phone_number', '_mnnt_state', '_mnnt_country', '_mnnt_address', '_mnnt_lostpassword_token', '_mnnt_lostpassword_token_expires', '_mnnt_name', 'first_name', '_mnnt_surname', 'last_name', '_mnnt_default_acceptance_doc_id', '_mnnt_secondary_acceptance_doc_id');

