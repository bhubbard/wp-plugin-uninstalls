<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vsmd-setting-4');
delete_site_option('vsmd-setting-4');
delete_option('vsmd-setting-5');
delete_site_option('vsmd-setting-5');
delete_option('vsmd-setting-1');
delete_site_option('vsmd-setting-1');
delete_option('vsmd-setting-2');
delete_site_option('vsmd-setting-2');
delete_option('vsmd-setting-7');
delete_site_option('vsmd-setting-7');
delete_option('vsmd-setting-3');
delete_site_option('vsmd-setting-3');
delete_option('vsmd-setting-6');
delete_site_option('vsmd-setting-6');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

