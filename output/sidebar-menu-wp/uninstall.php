<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csms_sidebar_menu_selected_menu');
delete_site_option('csms_sidebar_menu_selected_menu');
delete_option('csms_sidebar_menu_colors');
delete_site_option('csms_sidebar_menu_colors');

