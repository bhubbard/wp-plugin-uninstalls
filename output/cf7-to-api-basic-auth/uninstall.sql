-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qs_cf7_api_notices_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qs_cf7_api_debug_url', 'qs_cf7_api_debug_result', 'qs_cf7_api_debug_params', 'api_errors');
DELETE FROM wp_usermeta WHERE meta_key IN ('qs_cf7_api_debug_url', 'qs_cf7_api_debug_result', 'qs_cf7_api_debug_params', 'api_errors');
DELETE FROM wp_termmeta WHERE meta_key IN ('qs_cf7_api_debug_url', 'qs_cf7_api_debug_result', 'qs_cf7_api_debug_params', 'api_errors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qs_cf7_api_debug_url', 'qs_cf7_api_debug_result', 'qs_cf7_api_debug_params', 'api_errors');

