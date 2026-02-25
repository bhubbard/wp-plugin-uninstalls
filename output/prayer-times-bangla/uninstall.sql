-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prayer_times_bn_language', 'prayer_times_bn_width_value', 'prayer_times_bn_width_unit');

