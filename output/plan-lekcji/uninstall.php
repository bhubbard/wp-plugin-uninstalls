<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('planle_schedule_disabled_option');
delete_site_option('planle_schedule_disabled_option');
delete_option('planle_show_schedule_for_logged_in_option');
delete_site_option('planle_show_schedule_for_logged_in_option');
delete_option('planle_schedule_mode_option');
delete_site_option('planle_schedule_mode_option');
delete_option('planle_allow_logged_in_users_test_schedule');
delete_site_option('planle_allow_logged_in_users_test_schedule');
delete_option('planle_show_feedback_link_only_option');
delete_site_option('planle_show_feedback_link_only_option');
delete_option('planle_contact_page_option');
delete_site_option('planle_contact_page_option');
delete_option('planle_generator_option');
delete_site_option('planle_generator_option');
delete_option('planle_roles_with_access_to_test_plan');
delete_site_option('planle_roles_with_access_to_test_plan');
delete_option('planle_test_schedule_valid_date_option');
delete_site_option('planle_test_schedule_valid_date_option');
delete_option('planle_schedule_valid_date_option');
delete_site_option('planle_schedule_valid_date_option');
delete_option('planle_loaded_image_file_id');
delete_site_option('planle_loaded_image_file_id');
delete_option('planle_plan_mode_option');
delete_site_option('planle_plan_mode_option');
delete_option('planle_plan_views');
delete_site_option('planle_plan_views');
delete_option('planle_roles_with_access_to_test_schedule');
delete_site_option('planle_roles_with_access_to_test_schedule');

// Delete Transients
delete_transient('planle_notice');
delete_site_transient('planle_notice');

