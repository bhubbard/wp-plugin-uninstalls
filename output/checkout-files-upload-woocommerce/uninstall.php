<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_checkout_files_upload_version');
delete_site_option('alg_checkout_files_upload_version');
delete_option('wpw_cfu_settings');
delete_site_option('wpw_cfu_settings');
delete_option('alg_checkout_files_upload_form_template_field_ajax');
delete_site_option('alg_checkout_files_upload_form_template_field_ajax');
delete_option('alg_wc_checkout_files_upload_enabled');
delete_site_option('alg_wc_checkout_files_upload_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_hook_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_hook_priority_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_add_to_thankyou_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_add_to_myaccount_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_enabled_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_checkout_files_upload_emails_actions');
delete_site_option('alg_checkout_files_upload_emails_actions');
delete_option('alg_checkout_files_upload_emails_address');
delete_site_option('alg_checkout_files_upload_emails_address');
delete_option('alg_checkout_files_upload_emails_subject');
delete_site_option('alg_checkout_files_upload_emails_subject');
delete_option('alg_checkout_files_upload_emails_heading');
delete_site_option('alg_checkout_files_upload_emails_heading');
delete_option('alg_checkout_files_upload_emails_content');
delete_site_option('alg_checkout_files_upload_emails_content');
delete_option('alg_checkout_files_upload_emails_do_attach_on_upload');
delete_site_option('alg_checkout_files_upload_emails_do_attach_on_upload');
delete_option('alg_checkout_files_upload_emails_action_removed');
delete_site_option('alg_checkout_files_upload_emails_action_removed');
delete_option('alg_checkout_files_upload_emails_action_uploaded');
delete_site_option('alg_checkout_files_upload_emails_action_uploaded');
delete_option('alg_checkout_files_upload_use_ajax_alert_success_remove');
delete_site_option('alg_checkout_files_upload_use_ajax_alert_success_remove');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_notice_success_remove_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpw_cfu_form_template_uploaded_file');
delete_site_option('wpw_cfu_form_template_uploaded_file');
delete_option('alg_checkout_files_upload_use_ajax_alert_success_upload');
delete_site_option('alg_checkout_files_upload_use_ajax_alert_success_upload');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_notice_success_upload_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_checkout_files_upload_max_file_size_mb');
delete_site_option('alg_checkout_files_upload_max_file_size_mb');
delete_option('alg_checkout_files_upload_max_file_size_exceeded_message');
delete_site_option('alg_checkout_files_upload_max_file_size_exceeded_message');
delete_option('alg_checkout_files_upload_use_ajax_progress_bar');
delete_site_option('alg_checkout_files_upload_use_ajax_progress_bar');
delete_option('alg_checkout_files_upload_attach_to_admin_new_order');
delete_site_option('alg_checkout_files_upload_attach_to_admin_new_order');
delete_option('alg_checkout_files_upload_attach_to_customer_processing_order');
delete_site_option('alg_checkout_files_upload_attach_to_customer_processing_order');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_file_accept_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_notice_wrong_file_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_file_validate_image_dimensions_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_file_validate_image_dimensions_w_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_file_validate_image_dimensions_h_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_notice_wrong_image_dimensions_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_notice_no_image_dimensions_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_required_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_notice_required_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_show_products_in_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_show_cats_in_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_show_tags_in_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_label_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_checkout_files_upload_form_template_label');
delete_site_option('alg_checkout_files_upload_form_template_label');
delete_option('alg_checkout_files_upload_form_image_style');
delete_site_option('alg_checkout_files_upload_form_image_style');
delete_option('alg_checkout_files_upload_form_template_before');
delete_site_option('alg_checkout_files_upload_form_template_before');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_checkout_files_upload_label_button_single_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_checkout_files_upload_form_style_ajax_delete');
delete_site_option('alg_checkout_files_upload_form_style_ajax_delete');
delete_option('alg_checkout_files_upload_form_template_after');
delete_site_option('alg_checkout_files_upload_form_template_after');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_checkout_files_total_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_checkout_files_total_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_checkout_files_total_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_checkout_files_total_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_alg_checkout_files_upload_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_alg_checkout_files_upload_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_alg_checkout_files_upload_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_alg_checkout_files_upload_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_alg_checkout_files_upload_real_name_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_alg_checkout_files_upload_real_name_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_alg_checkout_files_upload_real_name_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_alg_checkout_files_upload_real_name_%' ) );

