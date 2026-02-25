<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_shop_slug');
delete_site_option('woocommerce_shop_slug');
delete_option('woocommerce_prepend_shop_page_to_urls');
delete_site_option('woocommerce_prepend_shop_page_to_urls');
delete_option('catalyst_connect');
delete_site_option('catalyst_connect');

