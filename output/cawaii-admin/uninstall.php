<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bg_css');
delete_site_option('bg_css');
delete_option('bg_at');
delete_site_option('bg_at');
delete_option('color_css');
delete_site_option('color_css');
delete_option('menu_pattern');
delete_site_option('menu_pattern');
delete_option('cawaii_header_logo');
delete_site_option('cawaii_header_logo');
delete_option('cawaii_login_logo');
delete_site_option('cawaii_login_logo');
delete_option('cawaii_dshbrd_metaboxes');
delete_site_option('cawaii_dshbrd_metaboxes');
delete_option('cawaii_post_metaboxes');
delete_site_option('cawaii_post_metaboxes');
delete_option('force_default_login_logo');
delete_site_option('force_default_login_logo');
delete_option('force_default_header_logo');
delete_site_option('force_default_header_logo');

