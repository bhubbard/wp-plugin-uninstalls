<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('responsive_block_swap_version');
delete_site_option('responsive_block_swap_version');
delete_option('responsive_block_swap_installed_time');
delete_site_option('responsive_block_swap_installed_time');

