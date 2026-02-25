<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ehrm_settings_data');
delete_site_option('ehrm_settings_data');
delete_option('ehrm_shifts_data');
delete_site_option('ehrm_shifts_data');
delete_option('ehrm_designations_data');
delete_site_option('ehrm_designations_data');
delete_option('ehrm_staffs_data');
delete_site_option('ehrm_staffs_data');
delete_option('ehrm_events_data');
delete_site_option('ehrm_events_data');
delete_option('ehrm_holidays_data');
delete_site_option('ehrm_holidays_data');
delete_option('ehrm_notices_data');
delete_site_option('ehrm_notices_data');
delete_option('ehrm_projects_data');
delete_site_option('ehrm_projects_data');
delete_option('ehrm_email_options_data');
delete_site_option('ehrm_email_options_data');
delete_option('ehrm_staff_attendence_data');
delete_site_option('ehrm_staff_attendence_data');
delete_option('ehrm_requests_data');
delete_site_option('ehrm_requests_data');
delete_option('ehrm_email_employee_welcome');
delete_site_option('ehrm_email_employee_welcome');
delete_option('ehrm_email_new_leave_request');
delete_site_option('ehrm_email_new_leave_request');
delete_option('ehrm_email_approved_leave_request');
delete_site_option('ehrm_email_approved_leave_request');
delete_option('ehrm_email_rejected_leave_request');
delete_site_option('ehrm_email_rejected_leave_request');
delete_option('ehrm_email_new_project_assigned');
delete_site_option('ehrm_email_new_project_assigned');
delete_option('ehrm_email_new_task_assigned');
delete_site_option('ehrm_email_new_task_assigned');
delete_option('ehrm_email_new_contact_assigned');
delete_site_option('ehrm_email_new_contact_assigned');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ehrm_email_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wl_ehrm_setup_wizard');
delete_site_option('wl_ehrm_setup_wizard');

