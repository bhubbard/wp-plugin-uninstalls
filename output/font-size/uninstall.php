<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('font_size_site_title');
delete_site_option('font_size_site_title');
delete_option('font_size_navigation');
delete_site_option('font_size_navigation');
delete_option('font_size_body');
delete_site_option('font_size_body');
delete_option('font_size_sidebar');
delete_site_option('font_size_sidebar');
delete_option('font_size_footer');
delete_site_option('font_size_footer');
delete_option('font_size_h1');
delete_site_option('font_size_h1');

