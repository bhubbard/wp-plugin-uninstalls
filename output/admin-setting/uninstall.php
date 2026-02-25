<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('list_menu_remove');
delete_site_option('list_menu_remove');
delete_option('list_menu');
delete_site_option('list_menu');
delete_option('logo_login');
delete_site_option('logo_login');
delete_option('background_login');
delete_site_option('background_login');
delete_option('logo_login_url');
delete_site_option('logo_login_url');
delete_option('logo_login_title');
delete_site_option('logo_login_title');

