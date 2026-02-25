<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buckydrop_app_id');
delete_site_option('buckydrop_app_id');
delete_option('buckydrop_app_secret');
delete_site_option('buckydrop_app_secret');
delete_option('buckydrop_merchant_id');
delete_site_option('buckydrop_merchant_id');
delete_option('buckydrop_shop_id');
delete_site_option('buckydrop_shop_id');

