-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appsell_api_key', 'appsell_error', 'appsell_error_message');

