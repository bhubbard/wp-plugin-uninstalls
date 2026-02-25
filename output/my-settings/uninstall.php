<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mys_hide_bar');
delete_site_option('mys_hide_bar');
delete_option('mys_email_from');
delete_site_option('mys_email_from');
delete_option('mys_email_sender');
delete_site_option('mys_email_sender');
delete_option('mys_footer');
delete_site_option('mys_footer');
delete_option('mys_hide_theme_edt');
delete_site_option('mys_hide_theme_edt');
delete_option('mys_hide_plugin_edt');
delete_site_option('mys_hide_plugin_edt');
delete_option('mys_login_url');
delete_site_option('mys_login_url');
delete_option('mys_login_rurl');
delete_site_option('mys_login_rurl');
delete_option('mys_logout_url');
delete_site_option('mys_logout_url');
delete_option('mys_show_tag');
delete_site_option('mys_show_tag');
delete_option('mys_show_tag_all');
delete_site_option('mys_show_tag_all');
delete_option('mys_show_tag_page');
delete_site_option('mys_show_tag_page');
delete_option('mys_before_tag');
delete_site_option('mys_before_tag');
delete_option('mys_after_tag');
delete_site_option('mys_after_tag');
delete_option('mys_show_to_admin');
delete_site_option('mys_show_to_admin');

