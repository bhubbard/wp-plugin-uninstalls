<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eap-amazon-country');
delete_site_option('eap-amazon-country');
delete_option('eap-amazon-tag');
delete_site_option('eap-amazon-tag');
delete_option('eap-amazon-api-access-key');
delete_site_option('eap-amazon-api-access-key');
delete_option('eap-amazon-api-secret');
delete_site_option('eap-amazon-api-secret');
delete_option('eap-buy-now-button');
delete_site_option('eap-buy-now-button');
delete_option('eap-amazon-link-type');
delete_site_option('eap-amazon-link-type');
delete_option('eap-amazon-show-price');
delete_site_option('eap-amazon-show-price');

