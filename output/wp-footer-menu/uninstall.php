<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('footer_menu_links');
delete_site_option('footer_menu_links');
delete_option('wp_footer_values');
delete_site_option('wp_footer_values');

