<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_menu_load_unminified_assets');
delete_site_option('fs_menu_load_unminified_assets');

