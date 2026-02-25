<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oizuled_conditional_fields_pid');
delete_site_option('oizuled_conditional_fields_pid');
delete_option('oizuled_conditional_fields_required');
delete_site_option('oizuled_conditional_fields_required');
delete_option('oizuled_conditional_fields_requiredtext');
delete_site_option('oizuled_conditional_fields_requiredtext');
delete_option('oizuled_conditional_fields_title');
delete_site_option('oizuled_conditional_fields_title');
delete_option('oizuled_conditional_fields_addemail');
delete_site_option('oizuled_conditional_fields_addemail');
delete_option('oizuled_conditional_fields_addinvoice');
delete_site_option('oizuled_conditional_fields_addinvoice');
delete_option('oizuled_conditional_fields_type');
delete_site_option('oizuled_conditional_fields_type');
delete_option('oizuled_conditional_fields_options');
delete_site_option('oizuled_conditional_fields_options');
delete_option('oizuled_conditional_fields_label');
delete_site_option('oizuled_conditional_fields_label');
delete_option('oizuled_conditional_fields_placeholder');
delete_site_option('oizuled_conditional_fields_placeholder');
delete_option('oizuled_conditional_fields_class');
delete_site_option('oizuled_conditional_fields_class');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('cwcfp-update-notice-dismissed');
delete_site_option('cwcfp-update-notice-dismissed');
delete_option('cwcf-review-notice-dismissed');
delete_site_option('cwcf-review-notice-dismissed');

