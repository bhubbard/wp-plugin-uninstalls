<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embed_hubspot_api_key');
delete_site_option('embed_hubspot_api_key');
delete_option('embed_hubspot_salesforce_support');
delete_site_option('embed_hubspot_salesforce_support');
delete_option('embed_hubspot_cache');
delete_site_option('embed_hubspot_cache');

