<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('wpforms_settings');
delete_site_option('wpforms_settings');
delete_option('wpcf7');
delete_site_option('wpcf7');
delete_option('pdf-forms-for-woocommerce-settings-pdf-ninja-api-key');
delete_site_option('pdf-forms-for-woocommerce-settings-pdf-ninja-api-key');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('pdf_forms_for_wpforms_pdfninja_key_failure');
delete_site_transient('pdf_forms_for_wpforms_pdfninja_key_failure');

// Clear Cron Jobs
wp_clear_scheduled_hook('pdf_forms_for_wpforms_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'pdf-forms-for-wpforms-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'pdf-forms-for-wpforms-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'pdf-forms-for-wpforms-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'pdf-forms-for-wpforms-%' ) );

