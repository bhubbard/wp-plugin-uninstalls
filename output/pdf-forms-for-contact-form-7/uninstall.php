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
delete_option('pdf-forms-for-woocommerce-settings-pdf-ninja-api-key');
delete_site_option('pdf-forms-for-woocommerce-settings-pdf-ninja-api-key');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wpcf7_pdf_forms_pdfninja_key_failure');
delete_site_transient('wpcf7_pdf_forms_pdfninja_key_failure');
delete_transient('wpcf7_pdf_forms_updated_old_version');
delete_site_transient('wpcf7_pdf_forms_updated_old_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpcf7_pdf_forms_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpcf7-pdf-forms-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpcf7-pdf-forms-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpcf7-pdf-forms-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpcf7-pdf-forms-%' ) );

