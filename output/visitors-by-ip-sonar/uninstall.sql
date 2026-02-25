-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vips_api_key', 'vips_tracking_mode', 'vips_country_acl_enabled', 'vips_blocked_countries', 'vips_country_filter_mode', 'vips_allow_bots', 'vips_db_version');

