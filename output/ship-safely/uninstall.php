<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shpsafe_woo_admin_api_token');
delete_site_option('shpsafe_woo_admin_api_token');
delete_option('shpsafe_woo_user_api_token');
delete_site_option('shpsafe_woo_user_api_token');

