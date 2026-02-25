<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_reviews_showcase_options');
delete_site_option('mo_reviews_showcase_options');
delete_option('mo_reviews_showcase_data');
delete_site_option('mo_reviews_showcase_data');

