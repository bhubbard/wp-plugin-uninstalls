<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipnfp_intl_phone_number_format_active');
delete_site_option('ipnfp_intl_phone_number_format_active');
delete_option('ipnfp_intl_phone_number_format_lookup_active');
delete_site_option('ipnfp_intl_phone_number_format_lookup_active');
delete_option('ipnfp_intl_phone_number_format_lookup_ttl');
delete_site_option('ipnfp_intl_phone_number_format_lookup_ttl');
delete_option('ipnfp_intl_phone_number_format_keys');
delete_site_option('ipnfp_intl_phone_number_format_keys');

