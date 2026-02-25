<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('schema_option_name');
delete_site_option('schema_option_name');
delete_option('schema_option_name_genesis');
delete_site_option('schema_option_name_genesis');
delete_option('schema_option_name_license');
delete_site_option('schema_option_name_license');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_HunchSchema-Markup-%', '_site_transient_HunchSchema-Markup-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_welcome_screen_activation_redirect');
delete_site_transient('_welcome_screen_activation_redirect');
delete_transient('hunch_schema_delete_transient_cache_success');
delete_site_transient('hunch_schema_delete_transient_cache_success');
delete_transient('hunch_schema_delete_transient_cache_failure');
delete_site_transient('hunch_schema_delete_transient_cache_failure');

// Clear Cron Jobs
wp_clear_scheduled_hook('schema_app_cron_resource_from_api');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_HunchSchemaType' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_HunchSchemaType' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_HunchSchemaType' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_HunchSchemaType' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_HunchSchemaMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_HunchSchemaMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_HunchSchemaMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_HunchSchemaMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_HunchSchemaDisableMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_HunchSchemaDisableMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_HunchSchemaDisableMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_HunchSchemaDisableMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_HunchSchemaEnableMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_HunchSchemaEnableMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_HunchSchemaEnableMarkup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_HunchSchemaEnableMarkup' ) );

