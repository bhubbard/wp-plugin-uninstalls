<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp_ebay_auth_user_id');
delete_site_option('sp_ebay_auth_user_id');
delete_option('sp_ebay_auth_token');
delete_site_option('sp_ebay_auth_token');
delete_option('sp_ebay_auth_app_id');
delete_site_option('sp_ebay_auth_app_id');
delete_option('sp_ebay_auth_cert_id');
delete_site_option('sp_ebay_auth_cert_id');
delete_option('sp_ebay_auth_dev_id');
delete_site_option('sp_ebay_auth_dev_id');
delete_option('sp_ebay_feedbacks_list_title');
delete_site_option('sp_ebay_feedbacks_list_title');
delete_option('sp_ebay_feedbacks_datetime_format');
delete_site_option('sp_ebay_feedbacks_datetime_format');

