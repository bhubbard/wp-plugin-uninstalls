<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webtica_sendinblue_option_name');
delete_site_option('webtica_sendinblue_option_name');

// Delete Transients
delete_transient('sendinblue_saved_custom_attributes');
delete_site_transient('sendinblue_saved_custom_attributes');
delete_transient('sendinblue_migration_pending');
delete_site_transient('sendinblue_migration_pending');
delete_transient('sendinblue_migration_running');
delete_site_transient('sendinblue_migration_running');
delete_transient('sendinblue_migration_notice');
delete_site_transient('sendinblue_migration_notice');
delete_transient('sendinblue_migration_missing_attrs');
delete_site_transient('sendinblue_migration_missing_attrs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

