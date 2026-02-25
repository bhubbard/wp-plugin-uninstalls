<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_compare_installed');
delete_site_option('product_compare_installed');
delete_option('product_compare_version');
delete_site_option('product_compare_version');

