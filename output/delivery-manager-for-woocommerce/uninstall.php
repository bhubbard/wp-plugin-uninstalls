<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dman_is_auto_complete_delivery');
delete_site_option('dman_is_auto_complete_delivery');
delete_option('dman_is_complete_order_on_delivery');
delete_site_option('dman_is_complete_order_on_delivery');
delete_option('dman_deliveries_menu_title');
delete_site_option('dman_deliveries_menu_title');
delete_option('dman_version');
delete_site_option('dman_version');
delete_option('dman_flash_notices');
delete_site_option('dman_flash_notices');

