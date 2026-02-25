<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_to_menu_post_types_to_handle');
delete_site_option('post_to_menu_post_types_to_handle');

