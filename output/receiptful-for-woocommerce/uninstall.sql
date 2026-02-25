-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('receiptful_widgets', 'receiptful_public_user_key', '_receiptful_queue', 'receiptful_debug_mode_enabled', '_receiptful_resend_queue', 'receiptful_api_key', 'receiptful_woocommerce_version', 'woocommerce_tax_display_cart', 'receiptful_suppress_wc_processing_email', 'receiptful_suppress_wc_completed_email', 'receiptful_enable_search', 'receiptful_enable_recommendations', 'receiptful_enable_feedback_widgets', 'receiptful_marketing_optin', 'receiptful_marketing_optin_text', 'receiptful_completed_initial_product_sync', 'receiptful_completed_initial_receipt_sync', 'woocommerce_tax_total_display', 'woocommerce_version', 'receiptful_enable_abandoned_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_receiptful_token', '_receiptful_last_update', '_receiptful_web_link', '_receiptful_receipt_id', '_purchase_note', '_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_receiptful_token', '_receiptful_last_update', '_receiptful_web_link', '_receiptful_receipt_id', '_purchase_note', '_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_receiptful_token', '_receiptful_last_update', '_receiptful_web_link', '_receiptful_receipt_id', '_purchase_note', '_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_receiptful_token', '_receiptful_last_update', '_receiptful_web_link', '_receiptful_receipt_id', '_purchase_note', '_customer_user');

