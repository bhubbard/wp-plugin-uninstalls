<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('luipl_anonymize_ip');
delete_site_option('luipl_anonymize_ip');
delete_option('luipl_location_api_key');
delete_site_option('luipl_location_api_key');
delete_option('luipl_transient_ttl');
delete_site_option('luipl_transient_ttl');

