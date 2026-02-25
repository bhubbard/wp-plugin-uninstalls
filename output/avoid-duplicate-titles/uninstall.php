<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpadt_check_individual_types');
delete_site_option('wpadt_check_individual_types');
delete_option('wpadt_allow_duplicate_titles');
delete_site_option('wpadt_allow_duplicate_titles');
delete_option('wpadt_selected_post_types');
delete_site_option('wpadt_selected_post_types');

