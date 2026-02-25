<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('appinsights_options');
delete_site_option('appinsights_options');
delete_option('appinsights_token');
delete_site_option('appinsights_token');
delete_option('appinsights_tenantid');
delete_site_option('appinsights_tenantid');
delete_option('appinsights_clientid');
delete_site_option('appinsights_clientid');
delete_option('appinsights_clientsecret');
delete_site_option('appinsights_clientsecret');
delete_option('appinsights_access');
delete_site_option('appinsights_access');
delete_option('appinsights_cachetime');
delete_site_option('appinsights_cachetime');
delete_option('appinsights_refresh_token');
delete_site_option('appinsights_refresh_token');
delete_option('appinsights_profile_list');
delete_site_option('appinsights_profile_list');
delete_option('appinsights_subscription_list');
delete_site_option('appinsights_subscription_list');
delete_option('appinsights_component_list');
delete_site_option('appinsights_component_list');
delete_option('appinsights_subscription');
delete_site_option('appinsights_subscription');
delete_option('appinsights_component');
delete_site_option('appinsights_component');
delete_option('appinsights_access_front');
delete_site_option('appinsights_access_front');
delete_option('appinsights_access_back');
delete_site_option('appinsights_access_back');
delete_option('appinsights_frontend');
delete_site_option('appinsights_frontend');

// Delete Transients
delete_transient('appinsights_refresh_token');
delete_site_transient('appinsights_refresh_token');
delete_transient('appinsights_cleanup_timeouts');
delete_site_transient('appinsights_cleanup_timeouts');

