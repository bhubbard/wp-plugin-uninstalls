<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aib_algolia_app_id');
delete_site_option('aib_algolia_app_id');
delete_option('aib_algolia_searchonly_api_key');
delete_site_option('aib_algolia_searchonly_api_key');

