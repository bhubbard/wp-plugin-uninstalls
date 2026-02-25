-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('um_terms_conditions_agreement_email', 'um_options', 'um_terms_conditions_version', 'um_terms_conditions_last_version_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_um_register_use_terms_conditions', '_um_register_use_terms_conditions_error_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_um_register_use_terms_conditions', '_um_register_use_terms_conditions_error_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_um_register_use_terms_conditions', '_um_register_use_terms_conditions_error_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_um_register_use_terms_conditions', '_um_register_use_terms_conditions_error_text');

