<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_customize_page_title');
delete_site_option('wp_customize_page_title');
delete_option('wp_customize_page_name');
delete_site_option('wp_customize_page_name');
delete_option('wp_customize_page_id');
delete_site_option('wp_customize_page_id');
delete_option('wpcustomize_admin_page_title');
delete_site_option('wpcustomize_admin_page_title');
delete_option('wpcustomize_admin_logo_image_url');
delete_site_option('wpcustomize_admin_logo_image_url');
delete_option('wpcustomize_admin_logo_link_url');
delete_site_option('wpcustomize_admin_logo_link_url');
delete_option('wpcustomize_admin_logo_title');
delete_site_option('wpcustomize_admin_logo_title');
delete_option('wpcustomize_admin_logo_width');
delete_site_option('wpcustomize_admin_logo_width');
delete_option('wpcustomize_admin_logo_height');
delete_site_option('wpcustomize_admin_logo_height');
delete_option('wpcustomize_admin_logo_area_width');
delete_site_option('wpcustomize_admin_logo_area_width');
delete_option('wpcustomize_admin_logo_area_height');
delete_site_option('wpcustomize_admin_logo_area_height');
delete_option('wpcustomize_admin_bgcolor');
delete_site_option('wpcustomize_admin_bgcolor');
delete_option('wpcustomize_admin_linkcolor');
delete_site_option('wpcustomize_admin_linkcolor');
delete_option('wpcustomize_admin_linkhovercolor');
delete_site_option('wpcustomize_admin_linkhovercolor');
delete_option('wpcustomize_admin_loginstyles');
delete_site_option('wpcustomize_admin_loginstyles');
delete_option('wpcustomize_admin_footer_contents');
delete_site_option('wpcustomize_admin_footer_contents');
delete_option('wpcustomize_hide_register_forgot_links');
delete_site_option('wpcustomize_hide_register_forgot_links');
delete_option('wpcustomize_hide_back_link');
delete_site_option('wpcustomize_hide_back_link');
delete_option('wpcustomize_show_privacy_policy_link');
delete_site_option('wpcustomize_show_privacy_policy_link');
delete_option('wpcustomize_remember_me_by_default');
delete_site_option('wpcustomize_remember_me_by_default');
delete_option('wpcustomize_custom_error_message');
delete_site_option('wpcustomize_custom_error_message');
delete_option('wpcustomize_remove_login_shake');
delete_site_option('wpcustomize_remove_login_shake');
delete_option('wpcustomize_admin_login_redirect');
delete_site_option('wpcustomize_admin_login_redirect');
delete_option('wpcustomize_admin_login_redirect_url');
delete_site_option('wpcustomize_admin_login_redirect_url');
delete_option('wpcustomize_admin_login_background_url');
delete_site_option('wpcustomize_admin_login_background_url');
delete_option('wpcustomize_admin_login_background_repeat');
delete_site_option('wpcustomize_admin_login_background_repeat');
delete_option('wpcustomize_admin_login_background_position');
delete_site_option('wpcustomize_admin_login_background_position');
delete_option('wpcustomize_admin_login_background_attachment');
delete_site_option('wpcustomize_admin_login_background_attachment');
delete_option('wpcustomize_admin_login_background_size');
delete_site_option('wpcustomize_admin_login_background_size');
delete_option('field_name_username');
delete_site_option('field_name_username');
delete_option('field_name_password');
delete_site_option('field_name_password');
delete_option('wpcustomize_admin_logo');
delete_site_option('wpcustomize_admin_logo');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

