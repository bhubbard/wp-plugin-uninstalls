<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keyspider_organization_id');
delete_site_option('keyspider_organization_id');
delete_option('keyspider_api_key');
delete_site_option('keyspider_api_key');
delete_option('keyspider_search_page');
delete_site_option('keyspider_search_page');

