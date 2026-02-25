<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ht_form_global_settings');
delete_site_option('ht_form_global_settings');
delete_option('ht_form_integrations');
delete_site_option('ht_form_integrations');
delete_option('ht_contactform_diagnostic_data_agreed');
delete_site_option('ht_contactform_diagnostic_data_agreed');
delete_option('ht_contactform_diagnostic_data_notice');
delete_site_option('ht_contactform_diagnostic_data_notice');
delete_option('ht_form_zohocrm_tokens');
delete_site_option('ht_form_zohocrm_tokens');

// Delete Transients
delete_transient('ht_contactform-notice-id-diagnostic-data');
delete_site_transient('ht_contactform-notice-id-diagnostic-data');
delete_transient('ht_form_zohocrm_modules');
delete_site_transient('ht_form_zohocrm_modules');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ht_form_zohocrm_fields_%', '_site_transient_ht_form_zohocrm_fields_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('ht_form_drafts_cleanup');
wp_clear_scheduled_hook('ht_contactform_remove_old_entries');
wp_clear_scheduled_hook('ht_form_temp_files_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'integrations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'integrations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'integrations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'integrations' ) );

