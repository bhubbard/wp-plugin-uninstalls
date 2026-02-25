<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shopboost_merchant_id');
delete_site_option('shopboost_merchant_id');
delete_option('shopboost_enable');
delete_site_option('shopboost_enable');
delete_option('shopboost_enable_for_admin');
delete_site_option('shopboost_enable_for_admin');
delete_option('shopboost_first_time');
delete_site_option('shopboost_first_time');

