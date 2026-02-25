<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allowed_menus');
delete_site_option('allowed_menus');
delete_option('allowed_menus_roles');
delete_site_option('allowed_menus_roles');
delete_option('allowed_menus_users');
delete_site_option('allowed_menus_users');

