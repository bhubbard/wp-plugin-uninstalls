<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zwhc_product_option');
delete_site_option('zwhc_product_option');
delete_option('zwhc_post_option');
delete_site_option('zwhc_post_option');

