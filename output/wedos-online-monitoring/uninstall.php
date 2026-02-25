<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('won_api_url');
delete_site_option('won_api_url');
delete_option('won_pair_checkId');
delete_site_option('won_pair_checkId');
delete_option('won_pair_apiToken');
delete_site_option('won_pair_apiToken');
delete_option('won_pair_token');
delete_site_option('won_pair_token');
delete_option('won_pair_publicToken');
delete_site_option('won_pair_publicToken');
delete_option('won_pair_connectionCheck');
delete_site_option('won_pair_connectionCheck');

