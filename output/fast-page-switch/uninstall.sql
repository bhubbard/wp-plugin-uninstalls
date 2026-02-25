-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fps_post_types', 'fps_post_statuses', 'fps_min_cap');

