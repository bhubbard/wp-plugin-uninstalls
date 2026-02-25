<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecomate_business_logo');
delete_site_option('ecomate_business_logo');
delete_option('ecomate_business_name');
delete_site_option('ecomate_business_name');
delete_option('ecomate_business_address');
delete_site_option('ecomate_business_address');
delete_option('ecomate_business_phone');
delete_site_option('ecomate_business_phone');
delete_option('ecomate_terms');
delete_site_option('ecomate_terms');

