-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkloom_settings', 'linkloom_tracked_transients', 'linkloom_progress');

