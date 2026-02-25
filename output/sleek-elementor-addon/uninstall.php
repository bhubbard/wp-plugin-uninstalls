<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sleek_ea_widgets_settings');
delete_site_option('sleek_ea_widgets_settings');
delete_option('sleek_ea_enabled_widgets');
delete_site_option('sleek_ea_enabled_widgets');
delete_option('sleek_ea_plugin_activated');
delete_site_option('sleek_ea_plugin_activated');
delete_option('sleek_ea_widgets_data');
delete_site_option('sleek_ea_widgets_data');

// Delete Transients
delete_transient('sleek_ea_elementor_notice');
delete_site_transient('sleek_ea_elementor_notice');
delete_transient('sleek_ea_widget_transient');
delete_site_transient('sleek_ea_widget_transient');

