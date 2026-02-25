-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icp_tracking_code', 'icp_tracking_domain', 'update_plugins', 'current_theme', 'update_themes', 'icp_plugin_key', 'srpd_clickbank_id', 'icp_wp_auto_update', 'icp_plugins_auto_update', 'icp_themes_auto_update', 'icp_sa_forms_db_version', 'serped_db_version', 'widget_srpd_sa_widget', 'update_plugins', 'update_themes');

