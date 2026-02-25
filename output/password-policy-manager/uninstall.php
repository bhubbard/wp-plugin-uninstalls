<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moppm_email');
delete_site_option('moppm_email');
delete_option('moppm_customerKey');
delete_site_option('moppm_customerKey');
delete_option('moppm_api_key');
delete_site_option('moppm_api_key');
delete_option('moppm_customer_token');
delete_site_option('moppm_customer_token');
delete_option('moppm_verify_customer');
delete_site_option('moppm_verify_customer');
delete_option('company');
delete_site_option('company');
delete_option('moppm_admin_phone');
delete_site_option('moppm_admin_phone');
delete_option('moppm_registration_status');
delete_site_option('moppm_registration_status');
delete_option('moppm_planname');
delete_site_option('moppm_planname');
delete_option('moppm_pricing_page_visitor');
delete_site_option('moppm_pricing_page_visitor');
delete_option('moppm_activated_time');
delete_site_option('moppm_activated_time');
delete_option('Moppm_enable_disable_ppm');
delete_site_option('Moppm_enable_disable_ppm');
delete_option('moppm_dbversion');
delete_site_option('moppm_dbversion');
delete_option('moppm_remove_offer_banner');
delete_site_option('moppm_remove_offer_banner');
delete_option('moppm_plantype');
delete_site_option('moppm_plantype');
delete_option('moppm_enable_disable_report');
delete_site_option('moppm_enable_disable_report');
delete_option('no_of_of_attempt');
delete_site_option('no_of_of_attempt');
delete_option('moppm_letter');
delete_site_option('moppm_letter');
delete_option('moppm_first_reset');
delete_site_option('moppm_first_reset');
delete_option('moppm_Numeric_digit');
delete_site_option('moppm_Numeric_digit');
delete_option('moppm_enable_disable_expiry');
delete_site_option('moppm_enable_disable_expiry');
delete_option('moppm_special_char');
delete_site_option('moppm_special_char');
delete_option('moppm_digit');
delete_site_option('moppm_digit');
delete_option('moppm_save_pass');
delete_site_option('moppm_save_pass');
delete_option('email');
delete_site_option('email');
delete_option('customerKey');
delete_site_option('customerKey');
delete_option('api_key');
delete_site_option('api_key');
delete_option('customer_token');
delete_site_option('customer_token');
delete_option('verify_customer');
delete_site_option('verify_customer');
delete_option('registration_status');
delete_site_option('registration_status');
delete_option('moppm_plugin_redirect');
delete_site_option('moppm_plugin_redirect');
delete_option('mo_ppm_message');
delete_site_option('mo_ppm_message');
delete_option('mo_ppm_customer_selected_plan');
delete_site_option('mo_ppm_customer_selected_plan');
delete_option('moppm_expiration_time');
delete_site_option('moppm_expiration_time');
delete_option('moppm_disable_forget');
delete_site_option('moppm_disable_forget');
delete_option('moppm_prev_password_lim');
delete_site_option('moppm_prev_password_lim');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'moppm_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_login_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('moppm_superadmin_login_url');
delete_site_option('moppm_superadmin_login_url');
delete_option('moppm_all_users_method');
delete_site_option('moppm_all_users_method');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moppm_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moppm_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moppm_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moppm_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moppm_pass_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moppm_pass_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moppm_pass_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moppm_pass_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moppm_first_reset' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moppm_first_reset' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moppm_first_reset' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moppm_first_reset' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moppm_last_pass_timestmp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moppm_last_pass_timestmp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moppm_last_pass_timestmp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moppm_last_pass_timestmp' ) );

