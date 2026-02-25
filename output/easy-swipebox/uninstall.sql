-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easySwipeBox_autodetect', 'easySwipeBox_lightbox', 'easySwipeBox_advanced', 'easySwipeBox_overview');

