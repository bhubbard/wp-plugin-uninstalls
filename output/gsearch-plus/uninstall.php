<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gomo_searchplus_options');
delete_site_option('gomo_searchplus_options');
delete_option('gee_searchplus_options');
delete_site_option('gee_searchplus_options');

// Delete Transients
delete_transient('geesearch_dismissed_notices');
delete_site_transient('geesearch_dismissed_notices');

