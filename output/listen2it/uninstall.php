<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('l2it_org_id');
delete_site_option('l2it_org_id');
delete_option('l2it_integration_id');
delete_site_option('l2it_integration_id');
delete_option('l2it_api_key');
delete_site_option('l2it_api_key');
delete_option('l2it_has_paywall');
delete_site_option('l2it_has_paywall');

