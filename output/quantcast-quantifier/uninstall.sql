-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qq_tracker_code_advanced', 'qq_tracker_code', 'qq_footer');

