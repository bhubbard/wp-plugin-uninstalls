-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vs_meet_options');
DELETE FROM wp_options WHERE option_name LIKE 'vsmeet_user_events_%';

