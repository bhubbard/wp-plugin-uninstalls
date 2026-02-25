<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_menu_bh_plugin');
delete_site_option('hide_menu_bh_plugin');
delete_option('hide_top_menu_bh_plugin');
delete_site_option('hide_top_menu_bh_plugin');
delete_option('hide_sub_menu_bh_plugin');
delete_site_option('hide_sub_menu_bh_plugin');
delete_option('wp-version-hide');
delete_site_option('wp-version-hide');
delete_option('hide-plugins');
delete_site_option('hide-plugins');
delete_option('admin-bar-logo');
delete_site_option('admin-bar-logo');
delete_option('login-logo');
delete_site_option('login-logo');
delete_option('wp-admin-footer-text');
delete_site_option('wp-admin-footer-text');
delete_option('wp-admin-bar-howdy-text');
delete_site_option('wp-admin-bar-howdy-text');
delete_option('menu_order_bh_plugin');
delete_site_option('menu_order_bh_plugin');

