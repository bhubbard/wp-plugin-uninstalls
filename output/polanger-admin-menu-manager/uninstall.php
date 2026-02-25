<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdt_settings_v2_migrated');
delete_site_option('pdt_settings_v2_migrated');
delete_option('pdt_settings');
delete_site_option('pdt_settings');
delete_option('pdt_menu_items');
delete_site_option('pdt_menu_items');

