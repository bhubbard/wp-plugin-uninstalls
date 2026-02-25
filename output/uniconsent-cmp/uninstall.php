<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unic_language');
delete_site_option('unic_language');
delete_option('unic_enable_iab');
delete_site_option('unic_enable_iab');
delete_option('unic_license');
delete_site_option('unic_license');
delete_option('unic_type');
delete_site_option('unic_type');
delete_option('unic_region');
delete_site_option('unic_region');
delete_option('unic_company');
delete_site_option('unic_company');
delete_option('unic_logo');
delete_site_option('unic_logo');
delete_option('unic_policy_url');
delete_site_option('unic_policy_url');
delete_option('unic_enable_gdpr');
delete_site_option('unic_enable_gdpr');
delete_option('unic_enable_ccpa');
delete_site_option('unic_enable_ccpa');
delete_option('unic_version');
delete_site_option('unic_version');
delete_option('unic_enable_google');
delete_site_option('unic_enable_google');
delete_option('unic_enable_cookie');
delete_site_option('unic_enable_cookie');

