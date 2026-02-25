<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ticketpaygo_lite_settings');
delete_site_option('ticketpaygo_lite_settings');
delete_option('tpgl_db_version');
delete_site_option('tpgl_db_version');
delete_option('ticketpaygo_email_settings');
delete_site_option('ticketpaygo_email_settings');
delete_option('tpgl_version');
delete_site_option('tpgl_version');
delete_option('tpgl_activated');
delete_site_option('tpgl_activated');
delete_option('tpgl_currency_symbol');
delete_site_option('tpgl_currency_symbol');
delete_option('tpgl_elementor_notice_dismissed');
delete_site_option('tpgl_elementor_notice_dismissed');
delete_option('tpgl_elementor_notice_shown');
delete_site_option('tpgl_elementor_notice_shown');
delete_option('tpgl_settings');
delete_site_option('tpgl_settings');
delete_option('tpgl_force_db_check');
delete_site_option('tpgl_force_db_check');

// Delete Transients
delete_transient('ticketpaygo_tables_created');
delete_site_transient('ticketpaygo_tables_created');
delete_transient('ticketpaygo_tables_error');
delete_site_transient('ticketpaygo_tables_error');
delete_transient('tpgl_tables_created');
delete_site_transient('tpgl_tables_created');
delete_transient('tpgl_tables_error');
delete_site_transient('tpgl_tables_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('tpgl_daily_reminders');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ticketpaygo_event_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ticketpaygo_event_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ticketpaygo_event_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ticketpaygo_event_data' ) );

