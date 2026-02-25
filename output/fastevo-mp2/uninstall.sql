-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fastevo_mp2_api_key', 'fastevo_mp2_storage_method', 'fastevo_mp2_api_key_error', 'fastevo_mp2_api_key_success');

