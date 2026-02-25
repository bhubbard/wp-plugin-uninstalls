-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fc_option_calendar', 'fc_option_feed1', 'fc_option_feed2', 'fc_option_feed3', 'fc2_option_calendar', 'fc2_option_feed1', 'fc2_option_feed2', 'fc2_option_feed3', 'defaultview1', 'defaultview2');

