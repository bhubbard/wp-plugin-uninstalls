<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reusable_blocks_admin_menu_option');
delete_site_option('reusable_blocks_admin_menu_option');

