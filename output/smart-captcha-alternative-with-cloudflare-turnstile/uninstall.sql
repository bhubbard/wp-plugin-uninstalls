-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'smartct_keys_verified', 'smartct_keys_rotated_at', 'smartct_settings', 'smartct_evf_validation_error', 'smartct_debug_log');

