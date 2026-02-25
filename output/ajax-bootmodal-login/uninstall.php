<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('option_bs3patch');
delete_site_option('option_bs3patch');
delete_option('modal_theme');
delete_site_option('modal_theme');
delete_option('option_checkbox');
delete_site_option('option_checkbox');
delete_option('option_usermodal');
delete_site_option('option_usermodal');
delete_option('can_register_option');
delete_site_option('can_register_option');
delete_option('lable_setting');
delete_site_option('lable_setting');
delete_option('button_text');
delete_site_option('button_text');
delete_option('button_text2');
delete_site_option('button_text2');
delete_option('enable_login_captcha');
delete_site_option('enable_login_captcha');
delete_option('enable_register_captcha');
delete_site_option('enable_register_captcha');
delete_option('enable_lostpass_captcha');
delete_site_option('enable_lostpass_captcha');
delete_option('captcha_font');
delete_site_option('captcha_font');
delete_option('default_buttons');
delete_site_option('default_buttons');
delete_option('default_sizes');
delete_site_option('default_sizes');
delete_option('remove_btn_block');
delete_site_option('remove_btn_block');
delete_option('alimir_login_redirect');
delete_site_option('alimir_login_redirect');
delete_option('alimir_register_redirect');
delete_site_option('alimir_register_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alimir_viewed_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alimir_viewed_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alimir_viewed_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alimir_viewed_posts' ) );

