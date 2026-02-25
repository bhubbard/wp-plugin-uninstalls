<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buzzolt_reviews_request_page_id');
delete_site_option('buzzolt_reviews_request_page_id');

