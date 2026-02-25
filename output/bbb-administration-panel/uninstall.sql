-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbb_admin_panel_plugin_version', 'bbb_admin_panel_url', 'bbb_admin_panel_salt', 'bbb_admin_panel_permissions', 'bbb_db_version', 'mt_bbb_url', 'mt_salt', 'bbb_admin_panel_widget_title');

