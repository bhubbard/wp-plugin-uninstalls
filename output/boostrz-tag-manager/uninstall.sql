-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boostrz_api_token', 'boostrz_api_token_expiry', 'boostrz_current_website_selected', 'boostrz_option');

