<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hami_settings');
delete_site_option('hami_settings');
delete_option('hami_menu_items');
delete_site_option('hami_menu_items');

