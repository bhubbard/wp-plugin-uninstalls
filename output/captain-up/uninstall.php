<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('captain-api-key');
delete_site_option('captain-api-key');
delete_option('captain-first-install');
delete_site_option('captain-first-install');
delete_option('captain-locale');
delete_site_option('captain-locale');
delete_option('captain-disabled-paths');
delete_site_option('captain-disabled-paths');
delete_option('captain-enabled-paths');
delete_site_option('captain-enabled-paths');
delete_option('captain-show-paths-type');
delete_site_option('captain-show-paths-type');
delete_option('captain-hide-on-homepage-checkbox');
delete_site_option('captain-hide-on-homepage-checkbox');
delete_option('captain-api-secret');
delete_site_option('captain-api-secret');
delete_option('captain-client-token');
delete_site_option('captain-client-token');
delete_option('captain-user-integration-checkbox');
delete_site_option('captain-user-integration-checkbox');

