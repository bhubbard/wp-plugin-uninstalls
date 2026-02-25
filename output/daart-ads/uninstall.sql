-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daart_ads_token', 'daart_error_token', 'error_token_uuid');

