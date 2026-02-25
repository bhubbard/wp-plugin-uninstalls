<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('year_type');
delete_site_option('year_type');
delete_option('foundation_year');
delete_site_option('foundation_year');

