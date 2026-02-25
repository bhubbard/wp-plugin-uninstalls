-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sleek_ea_widgets_settings', 'sleek_ea_enabled_widgets', 'sleek_ea_plugin_activated', 'sleek_ea_widgets_data', 'sleek_ea_elementor_notice', 'sleek_ea_widget_transient');

