<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('cev_skip_verification_for_selected_roles');
delete_site_option('cev_skip_verification_for_selected_roles');
delete_option('cev_verification_popup_overlay_background_color');
delete_site_option('cev_verification_popup_overlay_background_color');
delete_option('cev_button_color_widget_header');
delete_site_option('cev_button_color_widget_header');
delete_option('cev_button_text_color_widget_header');
delete_site_option('cev_button_text_color_widget_header');
delete_option('cev_button_text_size_widget_header');
delete_site_option('cev_button_text_size_widget_header');
delete_option('cev_widget_header_image_width');
delete_site_option('cev_widget_header_image_width');
delete_option('cev_button_text_header_font_size');
delete_site_option('cev_button_text_header_font_size');
delete_option('wc_cev_pro_ignore_notice_2.6.8');
delete_site_option('wc_cev_pro_ignore_notice_2.6.8');
delete_option('cev_enable_email_verification');
delete_site_option('cev_enable_email_verification');
delete_option('cev_email_for_verification');
delete_site_option('cev_email_for_verification');
delete_option('cev_email_for_verification_mode');
delete_site_option('cev_email_for_verification_mode');
delete_option('cev_verification_header');
delete_site_option('cev_verification_header');
delete_option('cev_verification_message');
delete_site_option('cev_verification_message');
delete_option('cev_verification_code_expiration');
delete_site_option('cev_verification_code_expiration');
delete_option('cev_verification_email_subject');
delete_site_option('cev_verification_email_subject');
delete_option('cev_verification_email_heading');
delete_site_option('cev_verification_email_heading');
delete_option('cev_verification_email_body');
delete_site_option('cev_verification_email_body');
delete_option('cev_verification_success_message');
delete_site_option('cev_verification_success_message');
delete_option('cev_enter_account_after_registration');
delete_site_option('cev_enter_account_after_registration');
delete_option('cev_resend_verification_email_message');
delete_site_option('cev_resend_verification_email_message');
delete_option('cev_verified_user_message');
delete_site_option('cev_verified_user_message');
delete_option('cev_redirect_page_after_varification');
delete_site_option('cev_redirect_page_after_varification');
delete_option('cev_free_update_version');
delete_site_option('cev_free_update_version');
delete_option('cev_verification_code_length');
delete_site_option('cev_verification_code_length');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('cev_verification_popup_background_color');
delete_site_option('cev_verification_popup_background_color');
delete_option('cev_verification_widget_footer');
delete_site_option('cev_verification_widget_footer');
delete_option('cev_verification_image');
delete_site_option('cev_verification_image');
delete_option('cev_content_align');
delete_site_option('cev_content_align');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_data_selector' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_optin_email_notification' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable_usage_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_tracker_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('cev_settings_admin_notice_ignore');
delete_site_transient('cev_settings_admin_notice_ignore');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'customer_email_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'customer_email_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'customer_email_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'customer_email_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'customer_email_verification_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'customer_email_verification_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'customer_email_verification_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'customer_email_verification_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cev_email_verification_pin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cev_email_verification_pin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cev_email_verification_pin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cev_email_verification_pin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cev_user_resend_times' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cev_user_resend_times' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cev_user_resend_times' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cev_user_resend_times' ) );

