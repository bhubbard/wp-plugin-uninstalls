<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_contract_address');
delete_site_option('default_contract_address');
delete_option('default_chain');
delete_site_option('default_chain');
delete_option('engine_api_endpoint');
delete_site_option('engine_api_endpoint');
delete_option('engine_access_token');
delete_site_option('engine_access_token');

