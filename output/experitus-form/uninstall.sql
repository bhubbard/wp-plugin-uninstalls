-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('experitus_request_attributes', 'experitus_connection_data', 'experitus_request_items', 'experitus_captcha_data', 'experitus_ssl_verifypeer', 'experitus_payments_data', 'experitus_options_check', 'experitus_block_dates', 'experitus_countries');

