<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('experitus_request_attributes');
delete_site_option('experitus_request_attributes');
delete_option('experitus_connection_data');
delete_site_option('experitus_connection_data');
delete_option('experitus_request_items');
delete_site_option('experitus_request_items');
delete_option('experitus_captcha_data');
delete_site_option('experitus_captcha_data');
delete_option('experitus_ssl_verifypeer');
delete_site_option('experitus_ssl_verifypeer');
delete_option('experitus_payments_data');
delete_site_option('experitus_payments_data');
delete_option('experitus_options_check');
delete_site_option('experitus_options_check');
delete_option('experitus_block_dates');
delete_site_option('experitus_block_dates');
delete_option('experitus_countries');
delete_site_option('experitus_countries');

