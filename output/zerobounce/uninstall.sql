-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zerobounce_settings_validation_forms', 'zerobounce_settings_validation_pass', 'zerobounce_settings_did_you_mean', 'zerobounce_settings_api_zone', 'zerobounce_settings_api_key', 'zerobounce_settings_api_timeout', 'zerobounce_settings_error_message', 'zerobounce_settings_did_you_mean_error', 'zerobounce_settings_block_free_email');

