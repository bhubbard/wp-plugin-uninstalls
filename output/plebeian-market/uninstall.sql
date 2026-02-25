-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plebeian_market_auth_key', 'plebeian_market_url_connect', 'plebeian_market_cutomization_css', 'plebeian_market_cutomization_js');

