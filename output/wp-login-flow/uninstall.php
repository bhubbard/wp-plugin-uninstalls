<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplf_show_admin_bar_only_admins');
delete_site_option('wplf_show_admin_bar_only_admins');
delete_option('wplf_lostpassword_subject');
delete_site_option('wplf_lostpassword_subject');
delete_option('wplf_lostpassword_message');
delete_site_option('wplf_lostpassword_message');
delete_option('wplf_logo_url');
delete_site_option('wplf_logo_url');
delete_option('wplf_logo_url_title');
delete_site_option('wplf_logo_url_title');
delete_option('wplf_bg_color');
delete_site_option('wplf_bg_color');
delete_option('wplf_link_color');
delete_site_option('wplf_link_color');
delete_option('wplf_link_hover_color');
delete_site_option('wplf_link_hover_color');
delete_option('wplf_font_color');
delete_site_option('wplf_font_color');
delete_option('wplf_custom_css');
delete_site_option('wplf_custom_css');
delete_option('wplf_login_box_responsive');
delete_site_option('wplf_login_box_responsive');
delete_option('wplf_login_box_bg_color');
delete_site_option('wplf_login_box_bg_color');
delete_option('wplf_login_box_color');
delete_site_option('wplf_login_box_color');
delete_option('wplf_login_box_border_radius_enable');
delete_site_option('wplf_login_box_border_radius_enable');
delete_option('wplf_login_box_border_radius');
delete_site_option('wplf_login_box_border_radius');
delete_option('wplf_logo');
delete_site_option('wplf_logo');
delete_option('wplf_register_loader');
delete_site_option('wplf_register_loader');
delete_option('wplf_login_loader');
delete_site_option('wplf_login_loader');
delete_option('wplf_from_email_enable');
delete_site_option('wplf_from_email_enable');
delete_option('wplf_from_email');
delete_site_option('wplf_from_email');
delete_option('wplf_from_name_enable');
delete_site_option('wplf_from_name_enable');
delete_option('wplf_from_name');
delete_site_option('wplf_from_name');
delete_option('wplf_require_activation');
delete_site_option('wplf_require_activation');
delete_option('wplf_register_set_pw');
delete_site_option('wplf_register_set_pw');
delete_option('wplf_auto_login');
delete_site_option('wplf_auto_login');
delete_option('wplf_registration_email_as_un');
delete_site_option('wplf_registration_email_as_un');
delete_option('wplf_registration_custom_fields');
delete_site_option('wplf_registration_custom_fields');
delete_option('wplf_auto_disable_rewrites');
delete_site_option('wplf_auto_disable_rewrites');
delete_option('wplf_nginx_enable');
delete_site_option('wplf_nginx_enable');
delete_option('wplf_rewrite_reset_pw_slug');
delete_site_option('wplf_rewrite_reset_pw_slug');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_slug' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('wplf_rewrite_activate');
delete_site_option('wplf_rewrite_activate');
delete_option('wplf_rewrite_activate_slug');
delete_site_option('wplf_rewrite_activate_slug');
delete_option('wplf_uninstall_remove_options');
delete_site_option('wplf_uninstall_remove_options');
delete_option('WP_LOGIN_FLOW_VERSION');
delete_site_option('WP_LOGIN_FLOW_VERSION');
delete_option('WP_LOGIN_MS_NOTICE');
delete_site_option('WP_LOGIN_MS_NOTICE');
delete_option('WP_LOGIN_NGINX_NOTICE');
delete_site_option('WP_LOGIN_NGINX_NOTICE');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activation_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activation_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activation_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activation_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activation_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activation_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activation_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activation_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activation_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activation_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activation_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activation_signup' ) );

