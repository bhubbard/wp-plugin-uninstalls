-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('expertpost_options_posthtml', 'expertpost_options_classname', 'expertpost_options_homeposturl', 'expertpost_options_singleposturl');

