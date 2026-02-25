-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpam_db_version', 'rpam_quick_action', 'rpam_saved', 'rpam_notice');

