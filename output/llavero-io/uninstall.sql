-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cill_apiurl', 'cill_apikey', 'cill_appid');

