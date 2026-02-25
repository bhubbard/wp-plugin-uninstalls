-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tainacan_extra_viewmodes_plugin_notification_dismissed');

