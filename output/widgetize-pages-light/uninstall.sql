-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otw_wpl_plugin_error', 'otw_sidebars', 'otw_widget_settings', 'sidebars_widgets', 'otw_plugin_options', 'otw_upd_plug', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'otw_lc_%';
DELETE FROM wp_options WHERE option_name LIKE '%_dnms';
DELETE FROM wp_options WHERE option_name LIKE '%_templates';

