<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmdpcf_country_code');
delete_site_option('gmdpcf_country_code');
delete_option('gmdpcf_address_option');
delete_site_option('gmdpcf_address_option');
delete_option('gmdpcf_skin');
delete_site_option('gmdpcf_skin');

