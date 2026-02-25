<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ll_at_license');
delete_site_option('ll_at_license');
delete_option('toolbar_license_key');
delete_site_option('toolbar_license_key');
delete_option('oada_activation_token');
delete_site_option('oada_activation_token');
delete_option('license_activated');
delete_site_option('license_activated');
delete_option('error_message');
delete_site_option('error_message');
delete_option('max_access_settings');
delete_site_option('max_access_settings');

