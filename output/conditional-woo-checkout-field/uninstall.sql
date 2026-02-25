-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oizuled_conditional_fields_pid', 'oizuled_conditional_fields_required', 'oizuled_conditional_fields_requiredtext', 'oizuled_conditional_fields_title', 'oizuled_conditional_fields_addemail', 'oizuled_conditional_fields_addinvoice', 'oizuled_conditional_fields_type', 'oizuled_conditional_fields_options', 'oizuled_conditional_fields_label', 'oizuled_conditional_fields_placeholder', 'oizuled_conditional_fields_class', 'woocommerce_myaccount_page_id', 'cwcfp-update-notice-dismissed', 'cwcf-review-notice-dismissed');

