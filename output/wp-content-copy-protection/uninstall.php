<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpccp');
delete_site_option('wpccp');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

