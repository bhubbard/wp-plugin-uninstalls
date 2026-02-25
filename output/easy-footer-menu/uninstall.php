<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_footer_menu_items');
delete_site_option('easy_footer_menu_items');
delete_option('easy_footer_menu_options');
delete_site_option('easy_footer_menu_options');

