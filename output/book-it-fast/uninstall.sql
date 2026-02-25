-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bookitfast_api_url', 'bookitfast_currency', 'bookitfast_api_token', 'bookitfast_settings', 'bookitfast_api_key', 'bookitfast_endpoint', 'bookitfast_login_reload');

