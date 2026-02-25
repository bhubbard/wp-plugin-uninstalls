-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_footer_text', 'peprobacsru_auto_change_status', 'peprobacsru_status_on_receipt_awaiting_upload', 'peprobacsru_status_on_receipt_awaiting_approval', 'peprobacsru_status_on_receipt_rejected', 'peprobacsru_status_on_receipt_approved', 'peprobacsru_html_before_form', 'peprobacsru_html_after_form', 'peprobacsru_use_secure_link', 'peprobacsru_redirect_after_upload', 'peprobacsru_allowed_gatewawys', 'peprobacsru_allowed_gateways', 'peprobacsru_allowed_file_types', 'peprobacsru_allowed_file_size', 'peprobacsru_show_on_statuses');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('receipt_upload_admin_note', '_attached_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('receipt_upload_admin_note', '_attached_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('receipt_upload_admin_note', '_attached_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('receipt_upload_admin_note', '_attached_order');

