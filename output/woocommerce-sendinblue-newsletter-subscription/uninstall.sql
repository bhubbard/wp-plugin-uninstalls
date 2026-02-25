-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'woocommerce_shop_page_id', 'wc_sendinblue_settings', 'woocommerce_new_order_settings', 'woocommerce_failed_order_settings', 'woocommerce_cancelled_order_settings', 'woocommerce_customer_on_hold_order_settings', 'woocommerce_customer_processing_order_settings', 'woocommerce_customer_refunded_order_settings', 'woocommerce_customer_completed_order_settings', 'woocommerce_customer_note_settings', 'woocommerce_customer_new_account_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_user', '_billing_email', 'ws_opt_in', '_thankyou_action_done', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_user', '_billing_email', 'ws_opt_in', '_thankyou_action_done', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_user', '_billing_email', 'ws_opt_in', '_thankyou_action_done', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_user', '_billing_email', 'ws_opt_in', '_thankyou_action_done', 'thumbnail_id');

