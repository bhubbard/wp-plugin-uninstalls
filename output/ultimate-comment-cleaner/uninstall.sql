-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ulticocl_triggers', 'ulticocl_settings', 'ulticocl_activity_log', 'rc_settings', 'ulticocl_comments_count');

