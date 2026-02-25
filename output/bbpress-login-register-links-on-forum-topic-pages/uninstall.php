<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tomas_bbpress_login_bar_disable_all_feature');
delete_site_option('tomas_bbpress_login_bar_disable_all_feature');
delete_option('tomas_bbpress_custom_links_login');
delete_site_option('tomas_bbpress_custom_links_login');
delete_option('bbpress_login_redirect_free');
delete_site_option('bbpress_login_redirect_free');
delete_option('tomas_bbpress_login_bar_display_lost_password');
delete_site_option('tomas_bbpress_login_bar_display_lost_password');
delete_option('bbpresscustomcss');
delete_site_option('bbpresscustomcss');
delete_option('bbpress_login_admin_bar');
delete_site_option('bbpress_login_admin_bar');
delete_option('bbpress_enable_bbpress_sidebar');
delete_site_option('bbpress_enable_bbpress_sidebar');
delete_option('tomas_bbpress_only_selected_sidebar');
delete_site_option('tomas_bbpress_only_selected_sidebar');
delete_option('tomas_bbpress_login_bar_location');
delete_site_option('tomas_bbpress_login_bar_location');
delete_option('tomas_bbpress_stop_register_spam');
delete_site_option('tomas_bbpress_stop_register_spam');
delete_option('bbploginuser_first_run_guide_bar');
delete_site_option('bbploginuser_first_run_guide_bar');
delete_option('tomas_bbpress_login_admin_logged_notificaion');
delete_site_option('tomas_bbpress_login_admin_logged_notificaion');

