<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logintap_api_tenant');
delete_site_option('logintap_api_tenant');
delete_option('logintap_api_appuuid');
delete_site_option('logintap_api_appuuid');
delete_option('logintap_api_login');
delete_site_option('logintap_api_login');
delete_option('logintap_api_password');
delete_site_option('logintap_api_password');
delete_option('logintap_api_accesstoken');
delete_site_option('logintap_api_accesstoken');
delete_option('logintap_api_refreshtoken');
delete_site_option('logintap_api_refreshtoken');

