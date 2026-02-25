-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pei_pix_api_key', 'pei_pix_secret', 'pei_pix_currency', 'pei_pix_gateway_option', 'pei_pix_logs');

