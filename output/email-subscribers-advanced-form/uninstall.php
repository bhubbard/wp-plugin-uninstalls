<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('es_af_pluginversion');
delete_site_option('es_af_pluginversion');
delete_option('esaf_gdpr_consent_notify_group_selector');
delete_site_option('esaf_gdpr_consent_notify_group_selector');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_group_selector' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ig_es_optintype');
delete_site_option('ig_es_optintype');
delete_option('ig_es_welcomeemail');
delete_site_option('ig_es_welcomeemail');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

