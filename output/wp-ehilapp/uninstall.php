<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ehilapp_options_cat');
delete_site_option('wp_ehilapp_options_cat');
delete_option('wp_ehilapp_options_tag');
delete_site_option('wp_ehilapp_options_tag');
delete_option('wp_ehilapp_options_cat_inv');
delete_site_option('wp_ehilapp_options_cat_inv');
delete_option('wp_ehilapp_options_tag_inv');
delete_site_option('wp_ehilapp_options_tag_inv');
delete_option('wp_ehilapp_options');
delete_site_option('wp_ehilapp_options');

