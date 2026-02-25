<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('provenExpertAccount');
delete_site_option('provenExpertAccount');
delete_option('provenexpertUpdateSlugs');
delete_site_option('provenexpertUpdateSlugs');
delete_option('provenExpertApiId');
delete_site_option('provenExpertApiId');
delete_option('provenExpertApiKey');
delete_site_option('provenExpertApiKey');
delete_option('provenExpertApiDisabled');
delete_site_option('provenExpertApiDisabled');
delete_option('provenExpertPluginId');
delete_site_option('provenExpertPluginId');
delete_option('provenExpertDebug');
delete_site_option('provenExpertDebug');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'provenExpertDismissed-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('provenExpertVersion');
delete_site_option('provenExpertVersion');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'provenExpertSeal%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('provenExpertSeals');
delete_site_option('provenExpertSeals');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'provenExpertWidget%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('provenExpertWidgets');
delete_site_option('provenExpertWidgets');

