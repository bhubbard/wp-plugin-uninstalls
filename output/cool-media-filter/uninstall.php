<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('category_item_access_by_role');
delete_site_option('category_item_access_by_role');
delete_option('coolmedia_role_add_error_message');
delete_site_option('coolmedia_role_add_error_message');

