<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('azure_tenant_id');
delete_site_option('azure_tenant_id');
delete_option('azure_client_id');
delete_site_option('azure_client_id');
delete_option('azure_client_secret');
delete_site_option('azure_client_secret');
delete_option('azure_subscription_id');
delete_site_option('azure_subscription_id');
delete_option('azure_resource_group');
delete_site_option('azure_resource_group');
delete_option('azure_frontdoor_name');
delete_site_option('azure_frontdoor_name');
delete_option('azure_endpoint_name');
delete_site_option('azure_endpoint_name');

