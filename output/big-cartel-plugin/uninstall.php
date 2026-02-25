<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bc_subdomain');
delete_site_option('bc_subdomain');
delete_option('bc_shop_url');
delete_site_option('bc_shop_url');

