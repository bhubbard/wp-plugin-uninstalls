<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jivosite_token');
delete_site_option('jivosite_token');
delete_option('jivosite_widget_id');
delete_site_option('jivosite_widget_id');
delete_option('jivosite_lang_code');
delete_site_option('jivosite_lang_code');
delete_option('jivosite_plugin_version');
delete_site_option('jivosite_plugin_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'jivosite_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

