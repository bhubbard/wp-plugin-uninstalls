<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ww_menu_business_url');
delete_site_option('ww_menu_business_url');
delete_option('ww_menu_show_link');
delete_site_option('ww_menu_show_link');

