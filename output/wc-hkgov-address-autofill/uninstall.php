<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hkaf_enable_for_billing');
delete_site_option('hkaf_enable_for_billing');
delete_option('hkaf_enable_for_shipping');
delete_site_option('hkaf_enable_for_shipping');
delete_option('hkaf_google_place_api_key');
delete_site_option('hkaf_google_place_api_key');
delete_option('hkaf_enable_for_hkgov');
delete_site_option('hkaf_enable_for_hkgov');
delete_option('hkaf_enable_for_google');
delete_site_option('hkaf_enable_for_google');

