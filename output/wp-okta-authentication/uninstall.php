<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('okta_org_url');
delete_site_option('okta_org_url');
delete_option('okta_client_id');
delete_site_option('okta_client_id');
delete_option('okta_client_secret');
delete_site_option('okta_client_secret');

