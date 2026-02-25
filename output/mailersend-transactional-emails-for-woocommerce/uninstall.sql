-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailersend_api_key', 'mailersend_from_name', 'mailersend_from_address', 'mailersend_cc_address', 'mailersend_bcc_address', 'mailersend_new_order_template_id', 'mailersend_cancel_order_template_id', 'mailersend_failed_order_template_id', 'mailersend_onhold_order_template_id', 'mailersend_processing_order_template_id', 'mailersend_completed_order_template_id', 'mailersend_refunded_order_template_id', 'mailersend_customer_invoice_template_id', 'mailersend_customer_note_template_id', 'mailersend_reset_password_template_id', 'mailersend_new_account_template_id');

