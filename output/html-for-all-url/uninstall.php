<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('old_permalink_structure');
delete_site_option('old_permalink_structure');
delete_option('hfa_selected_post_type');
delete_site_option('hfa_selected_post_type');

