<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('address_autocomplete_api_key');
delete_site_option('address_autocomplete_api_key');
delete_option('address_autocomplete_target_selectors');
delete_site_option('address_autocomplete_target_selectors');
delete_option('address_autocomplete_place_type');
delete_site_option('address_autocomplete_place_type');
delete_option('address_autocomplete_country');
delete_site_option('address_autocomplete_country');

