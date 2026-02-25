-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfafe-alreadyRated', 'sfafe-installDate', 'sb_instagram_settings', 'sfafe-v', 'sfafe-type', 'sfafe_load_feeds');

