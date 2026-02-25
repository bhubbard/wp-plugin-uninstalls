<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailersend_api_key');
delete_site_option('mailersend_api_key');
delete_option('mailersend_from_name');
delete_site_option('mailersend_from_name');
delete_option('mailersend_from_address');
delete_site_option('mailersend_from_address');
delete_option('mailersend_cc_address');
delete_site_option('mailersend_cc_address');
delete_option('mailersend_bcc_address');
delete_site_option('mailersend_bcc_address');
delete_option('mailersend_new_order_template_id');
delete_site_option('mailersend_new_order_template_id');
delete_option('mailersend_cancel_order_template_id');
delete_site_option('mailersend_cancel_order_template_id');
delete_option('mailersend_failed_order_template_id');
delete_site_option('mailersend_failed_order_template_id');
delete_option('mailersend_onhold_order_template_id');
delete_site_option('mailersend_onhold_order_template_id');
delete_option('mailersend_processing_order_template_id');
delete_site_option('mailersend_processing_order_template_id');
delete_option('mailersend_completed_order_template_id');
delete_site_option('mailersend_completed_order_template_id');
delete_option('mailersend_refunded_order_template_id');
delete_site_option('mailersend_refunded_order_template_id');
delete_option('mailersend_customer_invoice_template_id');
delete_site_option('mailersend_customer_invoice_template_id');
delete_option('mailersend_customer_note_template_id');
delete_site_option('mailersend_customer_note_template_id');
delete_option('mailersend_reset_password_template_id');
delete_site_option('mailersend_reset_password_template_id');
delete_option('mailersend_new_account_template_id');
delete_site_option('mailersend_new_account_template_id');

