<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('berocket_permalink_option');
delete_site_option('berocket_permalink_option');

