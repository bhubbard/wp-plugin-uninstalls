<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultrawpf_install_date');
delete_site_option('ultrawpf_install_date');
delete_option('ultrawpf_upload_dir_created');
delete_site_option('ultrawpf_upload_dir_created');
delete_option('uawpf_gs_client_id');
delete_site_option('uawpf_gs_client_id');
delete_option('uawpf_gs_client_secret');
delete_site_option('uawpf_gs_client_secret');
delete_option('uawpf_gs_redirect_uri');
delete_site_option('uawpf_gs_redirect_uri');
delete_option('uawpf_gs_token');
delete_site_option('uawpf_gs_token');
delete_option('wpforms_providers');
delete_site_option('wpforms_providers');
delete_option('ultrawpfpro_status');
delete_site_option('ultrawpfpro_status');
delete_option('ultrawpf_settings');
delete_site_option('ultrawpf_settings');
delete_option('uawpf_promo__schedule_start_from');
delete_site_option('uawpf_promo__schedule_start_from');
delete_option('uawpf_promo__schedule_option');
delete_site_option('uawpf_promo__schedule_option');
delete_option('tf_promo_notice_exists');
delete_site_option('tf_promo_notice_exists');
delete_option('tf_promo_widget_exists');
delete_site_option('tf_promo_widget_exists');
delete_option('uawpf_dashboard_widget_dismissed');
delete_site_option('uawpf_dashboard_widget_dismissed');
delete_option('tf_dismiss_admin_notice');
delete_site_option('tf_dismiss_admin_notice');
delete_option('uawpf_dismiss_post_notice');
delete_site_option('uawpf_dismiss_post_notice');
delete_option('ultrawpf_setup_wizard');
delete_site_option('ultrawpf_setup_wizard');
delete_option('ultrawpf_installed');
delete_site_option('ultrawpf_installed');
delete_option('ultrawpf_installed_time');
delete_site_option('ultrawpf_installed_time');
delete_option('ultrawpf_version');
delete_site_option('ultrawpf_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('uawpf_promo__schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ultrawpf_form_opt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ultrawpf_form_opt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ultrawpf_form_opt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ultrawpf_form_opt' ) );

