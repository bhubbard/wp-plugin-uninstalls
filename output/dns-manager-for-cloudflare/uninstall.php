<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dnsm4cf_api_token');
delete_site_option('dnsm4cf_api_token');
delete_option('dnsm4cf_zone_id');
delete_site_option('dnsm4cf_zone_id');
delete_option('dnsm4cf_domain_name');
delete_site_option('dnsm4cf_domain_name');

