<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customize-wp-login_login_button_style');
delete_site_option('customize-wp-login_login_button_style');
delete_option('customize-wp-login-dashicons_picker_settings');
delete_site_option('customize-wp-login-dashicons_picker_settings');
delete_option('customize-wp-login-wp_login_bg');
delete_site_option('customize-wp-login-wp_login_bg');
delete_option('customize-wp-login-wp_login_bg_logo_image');
delete_site_option('customize-wp-login-wp_login_bg_logo_image');
delete_option('customize-wp-login-wp_login_label_color');
delete_site_option('customize-wp-login-wp_login_label_color');
delete_option('customize-wp-login-wp_login_form_bg');
delete_site_option('customize-wp-login-wp_login_form_bg');
delete_option('customize-wp-login-wp_login_logo_image');
delete_site_option('customize-wp-login-wp_login_logo_image');
delete_option('customize-wp-login-wp_links_logo');
delete_site_option('customize-wp-login-wp_links_logo');
delete_option('customize-wp-login-wp_links_below');
delete_site_option('customize-wp-login-wp_links_below');
delete_option('customize-wp-login-wp_icon_label');
delete_site_option('customize-wp-login-wp_icon_label');
delete_option('customize-wp-login_custom_css');
delete_site_option('customize-wp-login_custom_css');
delete_option('customize-wp-login-wp_enable_rewrite_rules');
delete_site_option('customize-wp-login-wp_enable_rewrite_rules');
delete_option('alt_login_page');
delete_site_option('alt_login_page');
delete_option('alt_adv_redirect');
delete_site_option('alt_adv_redirect');
delete_option('alt_adv_admin');
delete_site_option('alt_adv_admin');

