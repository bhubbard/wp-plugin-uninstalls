-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp125_ad_orientation', 'wp125_num_slots', 'wp125_ad_order', 'wp125_buyad_url', 'wp125_disable_default_style', 'wp125_emailonexp', 'wp125_defaultad', 'wp125_daysbeforeexp', 'wp125_dofollow', 'wp125_db_version');

