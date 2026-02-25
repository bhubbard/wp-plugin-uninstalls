<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flavio_token');
delete_site_option('flavio_token');
delete_option('flavio_plan_uuid');
delete_site_option('flavio_plan_uuid');
delete_option('flavio_api_domain');
delete_site_option('flavio_api_domain');
delete_option('flavio_signature');
delete_site_option('flavio_signature');
delete_option('flavio_noindex_filter_enabled');
delete_site_option('flavio_noindex_filter_enabled');
delete_option('flavio_structured_data_home_active');
delete_site_option('flavio_structured_data_home_active');
delete_option('flavio_site_domain');
delete_site_option('flavio_site_domain');

