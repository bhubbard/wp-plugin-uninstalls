-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('videoseowtf', 'videoseo_last_generate_time', 'videoseo_last_ping_time');

