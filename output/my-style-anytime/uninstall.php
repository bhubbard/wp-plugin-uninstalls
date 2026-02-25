<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mysat_custom_bg_color');
delete_site_option('mysat_custom_bg_color');
delete_option('mysat_custom_login_bg_image');
delete_site_option('mysat_custom_login_bg_image');
delete_option('mysat_custom_login_logo');
delete_site_option('mysat_custom_login_logo');
delete_option('mysat_custom_login_url');
delete_site_option('mysat_custom_login_url');
delete_option('mysat_custom_login_title');
delete_site_option('mysat_custom_login_title');
delete_option('mysat_remove_meta_generator');
delete_site_option('mysat_remove_meta_generator');
delete_option('mysat_disable_gutenberg');
delete_site_option('mysat_disable_gutenberg');
delete_option('mysat_remove_wp_title');
delete_site_option('mysat_remove_wp_title');
delete_option('mysat_remove_category_slug');
delete_site_option('mysat_remove_category_slug');

