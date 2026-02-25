-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_random_blogdescription', 'wp_random_blogdescription_timing', 'wp_random_blogdescription_last');

