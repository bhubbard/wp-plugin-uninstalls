-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nws_sendy_api_key', 'nws_sendy_list_id', 'nws_sendy_installation_url', 'nws_sendy_sendy_url', 'nws_sendy_be_silent');

