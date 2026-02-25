<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_xlogo_image');
delete_site_option('wp_xlogo_image');
delete_option('wp_xlogo_width');
delete_site_option('wp_xlogo_width');
delete_option('wp_xlogo_height');
delete_site_option('wp_xlogo_height');
delete_option('wp_xlogo_bsize');
delete_site_option('wp_xlogo_bsize');

