<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_wtiktok_feed');
delete_site_option('widget_wtiktok_feed');
delete_option('factory_plugin_versions');
delete_site_option('factory_plugin_versions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_is_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wbcr_factory_google_fonts');
delete_site_transient('wbcr_factory_google_fonts');
delete_transient('wbcr_factory_google_fonts_raw');
delete_site_transient('wbcr_factory_google_fonts_raw');

