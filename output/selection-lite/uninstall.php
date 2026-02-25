<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdp_selection_lite_widgets_settings');
delete_site_option('mdp_selection_lite_widgets_settings');
delete_option('mdp_selection_lite_custom_css_settings');
delete_site_option('mdp_selection_lite_custom_css_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mdp_selection_lite_uninstall_settings');
delete_site_option('mdp_selection_lite_uninstall_settings');

// Delete Transients
delete_transient('plugin_id');
delete_site_transient('plugin_id');
delete_transient('mdp_selection_lite_widgets_names');
delete_site_transient('mdp_selection_lite_widgets_names');

