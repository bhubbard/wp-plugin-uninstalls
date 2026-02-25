<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedback_farm_projectId');
delete_site_option('feedback_farm_projectId');
delete_option('feedback_farm_selected_menu');
delete_site_option('feedback_farm_selected_menu');
delete_option('feedback_farm_end_image_url');
delete_site_option('feedback_farm_end_image_url');
delete_option('feedback_farm_identifier');
delete_site_option('feedback_farm_identifier');
delete_option('feedback_farm_localization');
delete_site_option('feedback_farm_localization');
delete_option('feedback_farm_page_name');
delete_site_option('feedback_farm_page_name');
delete_option('feedback_farm_theme');
delete_site_option('feedback_farm_theme');
delete_option('feedback_farm_types');
delete_site_option('feedback_farm_types');

