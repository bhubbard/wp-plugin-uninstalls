<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf_title');
delete_site_option('cf_title');
delete_option('cf_app_id');
delete_site_option('cf_app_id');
delete_option('cf_secret_key');
delete_site_option('cf_secret_key');
delete_option('cf_payment_mode');
delete_site_option('cf_payment_mode');
delete_option('cf_success_message');
delete_site_option('cf_success_message');

