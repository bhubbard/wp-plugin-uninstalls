<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jlconverttax-save-hierarchy');
delete_site_option('jlconverttax-save-hierarchy');
delete_option('jlconverttax-from-taxonomy');
delete_site_option('jlconverttax-from-taxonomy');
delete_option('jlconverttax-to-taxonomy');
delete_site_option('jlconverttax-to-taxonomy');
delete_option('jlconverttax-checked-categories');
delete_site_option('jlconverttax-checked-categories');

