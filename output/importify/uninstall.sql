-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('importify_api_key', 'importify_error', 'importify_error_message', 'importify_check');

