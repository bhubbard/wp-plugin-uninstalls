<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CJAffiliate_plugin_export');
delete_site_option('CJAffiliate_plugin_export');
delete_option('CJAffiliate_plugin_exportTransfer');
delete_site_option('CJAffiliate_plugin_exportTransfer');
delete_option('option_export_name');
delete_site_option('option_export_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_cj_export');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'attribute_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'attribute_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'attribute_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'attribute_%' ) );

