<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smart_address_enable_extension');
delete_site_option('smart_address_enable_extension');
delete_option('smart_address_api_key');
delete_site_option('smart_address_api_key');
delete_option('smart_address_country_list');
delete_site_option('smart_address_country_list');

// Delete Transients
delete_transient('smart_address_activation_redirect');
delete_site_transient('smart_address_activation_redirect');

