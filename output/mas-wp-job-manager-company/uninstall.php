<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('job_manager_company_enable_company_category');
delete_site_option('job_manager_company_enable_company_category');
delete_option('job_manager_company_enable_company_strength');
delete_site_option('job_manager_company_enable_company_strength');
delete_option('job_manager_company_enable_average_salary');
delete_site_option('job_manager_company_enable_average_salary');
delete_option('job_manager_company_enable_company_revenue');
delete_site_option('job_manager_company_enable_company_revenue');
delete_option('job_manager_company_category_filter_type');
delete_site_option('job_manager_company_category_filter_type');
delete_option('job_manager_companies_per_page');
delete_site_option('job_manager_companies_per_page');
delete_option('job_manager_submit_company_form_page_id');
delete_site_option('job_manager_submit_company_form_page_id');
delete_option('job_manager_company_dashboard_page_id');
delete_site_option('job_manager_company_dashboard_page_id');
delete_option('job_manager_company_submission_limit');
delete_site_option('job_manager_company_submission_limit');
delete_option('job_manager_user_can_edit_pending_company_submissions');
delete_site_option('job_manager_user_can_edit_pending_company_submissions');
delete_option('job_manager_enable_recaptcha_company_submission');
delete_site_option('job_manager_enable_recaptcha_company_submission');
delete_option('job_manager_registration_role');
delete_site_option('job_manager_registration_role');
delete_option('job_manager_company_submission_requires_approval');
delete_site_option('job_manager_company_submission_requires_approval');
delete_option('job_manager_job_submission_required_company');
delete_site_option('job_manager_job_submission_required_company');
delete_option('job_manager_manager_submit_company_form_page_id');
delete_site_option('job_manager_manager_submit_company_form_page_id');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mas_wpjmc_layered_nav_counts_%', '_site_transient_mas_wpjmc_layered_nav_counts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_company_name_prefix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_company_name_prefix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_company_name_prefix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_company_name_prefix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_public_submission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_public_submission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_public_submission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_public_submission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_submitting_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_submitting_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_submitting_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_submitting_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_company_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_company_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_company_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_company_id' ) );

