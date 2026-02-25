-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyresh_version', 'easyresh_secret_key_v2', 'easyresh_public_key_v2', 'easyresh_secret_key_v3', 'easyresh_public_key_v3', 'easyresh_v3_response_threshold');

