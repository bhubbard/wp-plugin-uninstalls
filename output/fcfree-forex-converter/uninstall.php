<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FCFree_exchange_rate_api_key');
delete_site_option('FCFree_exchange_rate_api_key');
delete_option('FCFree_currency_api_key_2');
delete_site_option('FCFree_currency_api_key_2');
delete_option('FCFree_currency_api_key_3');
delete_site_option('FCFree_currency_api_key_3');
delete_option('FCFree_currency_api_key_4');
delete_site_option('FCFree_currency_api_key_4');
delete_option('FCFree_active_api');
delete_site_option('FCFree_active_api');

