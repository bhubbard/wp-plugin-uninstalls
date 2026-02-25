<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wepay_mode');
delete_site_option('wepay_mode');
delete_option('wepay_accountID');
delete_site_option('wepay_accountID');
delete_option('wepay_clientID');
delete_site_option('wepay_clientID');
delete_option('wepay_clientsecret');
delete_site_option('wepay_clientsecret');
delete_option('wepay_accesstoken');
delete_site_option('wepay_accesstoken');
delete_option('wepay_thankqpage');
delete_site_option('wepay_thankqpage');

