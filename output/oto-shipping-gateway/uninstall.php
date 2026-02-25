<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wkwptoc_oto_username');
delete_site_option('_wkwptoc_oto_username');
delete_option('_wkwptoc_oto_password');
delete_site_option('_wkwptoc_oto_password');
delete_option('_wkwptoc_store_name');
delete_site_option('_wkwptoc_store_name');
delete_option('_wkwptoc_oto_access_token');
delete_site_option('_wkwptoc_oto_access_token');
delete_option('_wkwptoc_oto_webook_url');
delete_site_option('_wkwptoc_oto_webook_url');
delete_option('_wkwptoc_oto_environment');
delete_site_option('_wkwptoc_oto_environment');
delete_option('_wkwptoc_wc_api_id');
delete_site_option('_wkwptoc_wc_api_id');

