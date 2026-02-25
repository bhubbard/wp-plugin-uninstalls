<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('addsearch_settings');
delete_site_option('addsearch_settings');
delete_option('addsearch_redirect');
delete_site_option('addsearch_redirect');
delete_option('addSearchCustomerKey');
delete_site_option('addSearchCustomerKey');
delete_option('addsearch_prexisting');
delete_site_option('addsearch_prexisting');
delete_option('addsearch_currentversion');
delete_site_option('addsearch_currentversion');

