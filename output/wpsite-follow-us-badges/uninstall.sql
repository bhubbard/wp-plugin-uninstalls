-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsite_follow_us_badges_version', 'wpsite_follow_us_settings');

