<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page_modified_api_key');
delete_site_option('page_modified_api_key');
delete_option('page_modified_domain_id');
delete_site_option('page_modified_domain_id');

