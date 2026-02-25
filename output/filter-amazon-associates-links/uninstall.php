<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AM-amazon-link-filter-tags');
delete_site_option('AM-amazon-link-filter-tags');

