<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_share_option');
delete_site_option('product_share_option');
delete_option('product_share_option_advanced');
delete_site_option('product_share_option_advanced');
delete_option('product_share_license');
delete_site_option('product_share_license');

