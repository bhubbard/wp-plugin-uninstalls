<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('uikit-editor-blocks_uikit_theme');
delete_site_option('uikit-editor-blocks_uikit_theme');
delete_option('uikit-editor-blocks_exclude_load_uikit_components');
delete_site_option('uikit-editor-blocks_exclude_load_uikit_components');

