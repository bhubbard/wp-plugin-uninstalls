<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fundcollector_last_translation_update');
delete_site_option('fundcollector_last_translation_update');
delete_option('fundcollector_form_dynamic_css');
delete_site_option('fundcollector_form_dynamic_css');
delete_option('fundcollector_debug_dates');
delete_site_option('fundcollector_debug_dates');
delete_option('fundcollector_ajax_debug_logged');
delete_site_option('fundcollector_ajax_debug_logged');

// Delete Transients
delete_transient('fundcollector_settings_errors');
delete_site_transient('fundcollector_settings_errors');
delete_transient('fundcollector_settings_updated');
delete_site_transient('fundcollector_settings_updated');
delete_transient('fundcollector_critical_db_errors');
delete_site_transient('fundcollector_critical_db_errors');
delete_transient('fundcollector_forms_errors');
delete_site_transient('fundcollector_forms_errors');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fundcollector_token_%', '_site_transient_fundcollector_token_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fundcollector_payment_failed_%', '_site_transient_fundcollector_payment_failed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('fundcollector_cleanup_temp_data');
wp_clear_scheduled_hook('fundcollector_cleanup_expired_donations');
wp_clear_scheduled_hook('fundcollector_daily_maintenance');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'fundcollector_dismissed_db_error_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'fundcollector_dismissed_db_error_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'fundcollector_dismissed_db_error_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'fundcollector_dismissed_db_error_%' ) );

