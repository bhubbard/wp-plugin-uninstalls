<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arvan-cloud-cdn-status');
delete_site_option('arvan-cloud-cdn-status');
delete_option('arvan-cloud-cdn-api_key');
delete_site_option('arvan-cloud-cdn-api_key');
delete_option('arvan-cloud-cdn-automatic-cleaning');
delete_site_option('arvan-cloud-cdn-automatic-cleaning');

// Delete Transients
delete_transient('currently_requested_for_automatic_add_domain');
delete_site_transient('currently_requested_for_automatic_add_domain');

