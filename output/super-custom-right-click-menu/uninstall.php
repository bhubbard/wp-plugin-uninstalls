<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('super_custom_right_click_menu_options');
delete_site_option('super_custom_right_click_menu_options');

