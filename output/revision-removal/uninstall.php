<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revision_removal_no');
delete_site_option('revision_removal_no');
delete_option('revision_removal_getPosts');
delete_site_option('revision_removal_getPosts');

