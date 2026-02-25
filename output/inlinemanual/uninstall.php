<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('front_site_api_key');
delete_site_option('front_site_api_key');
delete_option('im_frontend_roles');
delete_site_option('im_frontend_roles');
delete_option('site_api_key');
delete_site_option('site_api_key');
delete_option('im_admin_roles');
delete_site_option('im_admin_roles');

