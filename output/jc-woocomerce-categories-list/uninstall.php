<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable-image');
delete_site_option('enable-image');
delete_option('enable-products');
delete_site_option('enable-products');
delete_option('post-per-page');
delete_site_option('post-per-page');

