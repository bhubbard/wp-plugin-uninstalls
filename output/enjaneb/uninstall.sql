-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enjaneb_widget_epi', 'enjaneb_widget_lng', 'enjaneb_widget_org', 'error_enjaneb');

