-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autobusal_gjuha', 'autobusal_appid', 'autobusal_appsecret', 'autobusal_dsg_bgcolor');

