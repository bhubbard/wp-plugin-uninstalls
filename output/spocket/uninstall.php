<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spocket_store_authorization_key');
delete_site_option('spocket_store_authorization_key');
delete_option('spocket_shop_url');
delete_site_option('spocket_shop_url');
delete_option('spocket_auth_token');
delete_site_option('spocket_auth_token');
delete_option('spocket_user_id');
delete_site_option('spocket_user_id');
delete_option('spocket_connected');
delete_site_option('spocket_connected');

