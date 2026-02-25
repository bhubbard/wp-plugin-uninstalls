-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llc_geoip_database_path', 'llc_blacklist', 'llc_countries', 'limit_login_countries_log');

