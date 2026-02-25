-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aicf_consent_given', 'aicf_rest_api_key', 'aicf_db_version', 'aicf_usage_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

