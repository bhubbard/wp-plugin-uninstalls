<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kontur_style_admin_logo');
delete_site_option('kontur_style_admin_logo');
delete_option('kontur_admin_style_adminbar_background');
delete_site_option('kontur_admin_style_adminbar_background');
delete_option('kontur_admin_style_login_logo_link');
delete_site_option('kontur_admin_style_login_logo_link');
delete_option('kontur_admin_style_logo_background_image');
delete_site_option('kontur_admin_style_logo_background_image');
delete_option('kontur_admin_style_login_background_image');
delete_site_option('kontur_admin_style_login_background_image');
delete_option('kontur-settings-checkbox-admin-style');
delete_site_option('kontur-settings-checkbox-admin-style');
delete_option('kontur_style_admin_use_logo');
delete_site_option('kontur_style_admin_use_logo');
delete_option('kontur-settings-checkbox-login');
delete_site_option('kontur-settings-checkbox-login');
delete_option('kontur_admin_current_sub_menu');
delete_site_option('kontur_admin_current_sub_menu');
delete_option('kontur_admin_adminmenuwrap');
delete_site_option('kontur_admin_adminmenuwrap');
delete_option('kontur_admin_adminmenuback');
delete_site_option('kontur_admin_adminmenuback');
delete_option(' kontur_style_admin_logo');
delete_site_option(' kontur_style_admin_logo');
delete_option('kontur-settings-checkbox-dashboard');
delete_site_option('kontur-settings-checkbox-dashboard');
delete_option('kontur-settings-use-stlye');
delete_site_option('kontur-settings-use-stlye');
delete_option('kontur-settings-checkbox-media');
delete_site_option('kontur-settings-checkbox-media');
delete_option('kontur_admin_style_background');
delete_site_option('kontur_admin_style_background');

// Delete Transients
delete_transient('kontur-admin-style-notice');
delete_site_transient('kontur-admin-style-notice');

