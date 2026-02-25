<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('podd_plugin_options_favicons');
delete_site_option('podd_plugin_options_favicons');
delete_option('podd_plugin_options_logger');
delete_site_option('podd_plugin_options_logger');
delete_option('podd_plugin_options_usecdn');
delete_site_option('podd_plugin_options_usecdn');
delete_option('podd_plugin_options_nag');
delete_site_option('podd_plugin_options_nag');
delete_option('podd_plugin_features_analytics');
delete_site_option('podd_plugin_features_analytics');
delete_option('podd_plugin_features_history');
delete_site_option('podd_plugin_features_history');
delete_option('podd_plugin_core_wp_is_mobile');
delete_site_option('podd_plugin_core_wp_is_mobile');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'podd_plugin_css_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('podd_plugin_css_current');
delete_site_option('podd_plugin_css_current');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

