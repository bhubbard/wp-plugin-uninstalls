<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amg_menu_settings');
delete_site_option('amg_menu_settings');
delete_option('amg_meta_settings');
delete_site_option('amg_meta_settings');

