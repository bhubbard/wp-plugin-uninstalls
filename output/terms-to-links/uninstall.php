<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('term2link_times');
delete_site_option('term2link_times');
delete_option('term2link_taxonomies');
delete_site_option('term2link_taxonomies');

// Delete Transients
delete_transient('terms_to_links');
delete_site_transient('terms_to_links');

