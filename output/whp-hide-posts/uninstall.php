<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whp_disable_hidden_on_column');
delete_site_option('whp_disable_hidden_on_column');
delete_option('whp_enabled_post_types');
delete_site_option('whp_enabled_post_types');
delete_option('whp_data_migrated');
delete_site_option('whp_data_migrated');
delete_option('whp_data_migrated_notice_closed');
delete_site_option('whp_data_migrated_notice_closed');
delete_option('whp_db_version');
delete_site_option('whp_db_version');

// Delete Transients
delete_transient('whp_migration_lock');
delete_site_transient('whp_migration_lock');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_whp_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_whp_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_whp_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_whp_%' ) );

