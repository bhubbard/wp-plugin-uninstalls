<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easyjobs_analytics_connected');
delete_site_option('easyjobs_analytics_connected');
delete_option('easyjobs_company_info');
delete_site_option('easyjobs_company_info');
delete_option('easyjobs_parent_page');
delete_site_option('easyjobs_parent_page');
delete_option('easyjobs_settings');
delete_site_option('easyjobs_settings');
delete_option('wpdeveloper_plugins_data');
delete_site_option('wpdeveloper_plugins_data');
delete_option('easyjobs_black_friday_notice');
delete_site_option('easyjobs_black_friday_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpins_allow_tracking');
delete_site_option('wpins_allow_tracking');
delete_option('wpins_last_track_time');
delete_site_option('wpins_last_track_time');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpins_block_notice');
delete_site_option('wpins_block_notice');
delete_option('easyjobs_company_details');
delete_site_option('easyjobs_company_details');
delete_option('easyjobs_ai_setup');
delete_site_option('easyjobs_ai_setup');
delete_option('easyjobs_wp_pages');
delete_site_option('easyjobs_wp_pages');
delete_option('easyjobs_widgets_or_shortcode');
delete_site_option('easyjobs_widgets_or_shortcode');

// Delete Transients
delete_transient('easyjobs_company_verification_status');
delete_site_transient('easyjobs_company_verification_status');
delete_transient('easyjobs_activation_redirect');
delete_site_transient('easyjobs_activation_redirect');
delete_transient('wpnotice_priority_time_expired');
delete_site_transient('wpnotice_priority_time_expired');
delete_transient('easyjobs_state_version');
delete_site_transient('easyjobs_state_version');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_elej_company_%', '_site_transient_elej_company_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('easyjobs_parent_creating');
delete_site_transient('easyjobs_parent_creating');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ej_block_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ej_block_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ej_block_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ej_block_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'easyjobs_job_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'easyjobs_job_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'easyjobs_job_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'easyjobs_job_id' ) );

