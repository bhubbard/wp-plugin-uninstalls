<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hamazon_option_updated');
delete_site_option('hamazon_option_updated');
delete_option('hamazon_post_types');
delete_site_option('hamazon_post_types');
delete_option('hamazon_load_css');
delete_site_option('hamazon_load_css');
delete_option('wp_tmkm_admin_options');
delete_site_option('wp_tmkm_admin_options');

