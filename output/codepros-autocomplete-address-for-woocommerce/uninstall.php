<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpai_autocomplete_api_key');
delete_site_option('cpai_autocomplete_api_key');
delete_option('cpai_autocomplete_enable_for_billing');
delete_site_option('cpai_autocomplete_enable_for_billing');
delete_option('cpai_autocomplete_enable_for_shipping');
delete_site_option('cpai_autocomplete_enable_for_shipping');

