<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('people_lists');
delete_site_option('people_lists');
delete_option('people-lists');
delete_site_option('people-lists');

