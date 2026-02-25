<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedback_fish_project_id');
delete_site_option('feedback_fish_project_id');
delete_option('feedback_fish_selected_menu');
delete_site_option('feedback_fish_selected_menu');

