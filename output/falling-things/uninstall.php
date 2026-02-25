<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('falling_items_quantity');
delete_site_option('falling_items_quantity');
delete_option('falling_items_speed');
delete_site_option('falling_items_speed');
delete_option('falling_items_move_lr');
delete_site_option('falling_items_move_lr');
delete_option('falling_items_display_on');
delete_site_option('falling_items_display_on');

