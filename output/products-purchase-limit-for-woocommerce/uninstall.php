<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cartlimit_min');
delete_site_option('cartlimit_min');
delete_option('cartlimit_max');
delete_site_option('cartlimit_max');
delete_option('product_limit_check');
delete_site_option('product_limit_check');

