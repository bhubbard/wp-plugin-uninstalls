<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('form_notify_line_btn_form_display');
delete_site_option('form_notify_line_btn_form_display');
delete_option('form_notify_line_btn_form_display_position');
delete_site_option('form_notify_line_btn_form_display_position');
delete_option('form_notify_line_btn_checkout_display');
delete_site_option('form_notify_line_btn_checkout_display');
delete_option('form_notify_line_btn_checkout_display_position');
delete_site_option('form_notify_line_btn_checkout_display_position');
delete_option('form_notify_line_btn_wp_form_display');
delete_site_option('form_notify_line_btn_wp_form_display');
delete_option('form_notify_line_btn_form_display_size');
delete_site_option('form_notify_line_btn_form_display_size');
delete_option('form_notify_line_btn_form_display_align');
delete_site_option('form_notify_line_btn_form_display_align');
delete_option('form_notify_line_btn_checkout_display_size');
delete_site_option('form_notify_line_btn_checkout_display_size');
delete_option('form_notify_line_btn_checkout_display_align');
delete_site_option('form_notify_line_btn_checkout_display_align');
delete_option('form_notify_line_btn_checkout_text');
delete_site_option('form_notify_line_btn_checkout_text');
delete_option('form_notify_line_btn_redirect');
delete_site_option('form_notify_line_btn_redirect');
delete_option('form_notify_line_btn_user_email');
delete_site_option('form_notify_line_btn_user_email');
delete_option('form_notify_line_login_channel_id');
delete_site_option('form_notify_line_login_channel_id');
delete_option('form_notify_line_login_channel_secret');
delete_site_option('form_notify_line_login_channel_secret');
delete_option('form_notify_line_btn_user_role');
delete_site_option('form_notify_line_btn_user_role');
delete_option('form_notify_line_message_token');
delete_site_option('form_notify_line_message_token');
delete_option('form_notify_line_notify_token');
delete_site_option('form_notify_line_notify_token');
delete_option('form_notify_easygo_username');
delete_site_option('form_notify_easygo_username');
delete_option('form_notify_easygo_password');
delete_site_option('form_notify_easygo_password');
delete_option('form_notify_e8d_enable');
delete_site_option('form_notify_e8d_enable');
delete_option('form_notify_e8d_user_id');
delete_site_option('form_notify_e8d_user_id');
delete_option('form_notify_e8d_password');
delete_site_option('form_notify_e8d_password');
delete_option('form_notify_e8d_token');
delete_site_option('form_notify_e8d_token');
delete_option('wc_notify_e8d_token');
delete_site_option('wc_notify_e8d_token');
delete_option('form_notify_mitake_username');
delete_site_option('form_notify_mitake_username');
delete_option('form_notify_mitake_password');
delete_site_option('form_notify_mitake_password');
delete_option('form_notify_mitake_api_url');
delete_site_option('form_notify_mitake_api_url');
delete_option('form_notify_db_version');
delete_site_option('form_notify_db_version');
delete_option('form_notify_mitake_enable');
delete_site_option('form_notify_mitake_enable');
delete_option('form_notify_easygo_enable');
delete_site_option('form_notify_easygo_enable');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_form_notify_line_state_%', '_site_transient_form_notify_line_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'form_notify_line_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'form_notify_line_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'form_notify_line_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'form_notify_line_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'form_notify_line_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'form_notify_line_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'form_notify_line_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'form_notify_line_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'form_notify_action_module' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'form_notify_action_module' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'form_notify_action_module' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'form_notify_action_module' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'line_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'line_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'line_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'line_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_heiblack_social_line_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_heiblack_social_line_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_heiblack_social_line_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_heiblack_social_line_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

