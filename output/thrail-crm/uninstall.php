<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thrail_crm_email_settings');
delete_site_option('thrail_crm_email_settings');
delete_option('thrail_crm_inserted');
delete_site_option('thrail_crm_inserted');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_congratulatory_email_sent_time_%', '_site_transient_congratulatory_email_sent_time_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('thrail_send_followup_email');

