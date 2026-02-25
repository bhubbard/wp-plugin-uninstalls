<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('caswp_modules');
delete_site_option('caswp_modules');
delete_option('caswp_admin_bar_customizer_options');
delete_site_option('caswp_admin_bar_customizer_options');
delete_option('caswp_footer_customizer_options');
delete_site_option('caswp_footer_customizer_options');
delete_option('caswp_heartbeat_customizer_options');
delete_site_option('caswp_heartbeat_customizer_options');
delete_option('caswp_login_logo_customizer_options');
delete_site_option('caswp_login_logo_customizer_options');
delete_option('caswp_user_activity_columns_options');
delete_site_option('caswp_user_activity_columns_options');
delete_option('caswp_gutenberg_disabler_options');
delete_site_option('caswp_gutenberg_disabler_options');
delete_option('caswp_login_url_customizer_options');
delete_site_option('caswp_login_url_customizer_options');
delete_option('caswp_maintenance_mode_options');
delete_site_option('caswp_maintenance_mode_options');
delete_option('caswp_admin_logo_customizer_options');
delete_site_option('caswp_admin_logo_customizer_options');
delete_option('caswp_login_method_customizer_options');
delete_site_option('caswp_login_method_customizer_options');
delete_option('caswp_notification_customizer_options');
delete_site_option('caswp_notification_customizer_options');
delete_option('caswp_body_class_customizer_options');
delete_site_option('caswp_body_class_customizer_options');

