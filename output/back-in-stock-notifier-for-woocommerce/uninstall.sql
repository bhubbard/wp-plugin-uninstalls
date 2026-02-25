-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwginstocksettings', 'woocommerce_email_from_address', 'woocommerce_email_from_name', 'woocommerce_email_footer_text', 'cwginstock_imail_settings', 'cwginstock_backend_ui', 'cwginstock_test_email_status', 'cwginstock_iagree_settings', 'cwg_data_upgraded', 'cwginstock_esta');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cwginstock_bypass_pid', 'cwginstock_pid', 'cwginstock_subscriber_email', 'cwginstock_mail_on', 'cwginstock_subscriber_personal_data_deleted', 'cwg_total_subscribers', 'cwginstock_bypass_id', 'cwginstock_subscriber_name', 'cwginstock_user_id', 'cwginstock_subscriber_phone', 'cwginstock_product_id', 'cwginstock_variation_id', 'cwginstock_custom_quantity', 'cwginstock_created_via', 'cwg_product_ids', 'cwg_eta_date', 'cwg_stock_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('cwginstock_bypass_pid', 'cwginstock_pid', 'cwginstock_subscriber_email', 'cwginstock_mail_on', 'cwginstock_subscriber_personal_data_deleted', 'cwg_total_subscribers', 'cwginstock_bypass_id', 'cwginstock_subscriber_name', 'cwginstock_user_id', 'cwginstock_subscriber_phone', 'cwginstock_product_id', 'cwginstock_variation_id', 'cwginstock_custom_quantity', 'cwginstock_created_via', 'cwg_product_ids', 'cwg_eta_date', 'cwg_stock_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('cwginstock_bypass_pid', 'cwginstock_pid', 'cwginstock_subscriber_email', 'cwginstock_mail_on', 'cwginstock_subscriber_personal_data_deleted', 'cwg_total_subscribers', 'cwginstock_bypass_id', 'cwginstock_subscriber_name', 'cwginstock_user_id', 'cwginstock_subscriber_phone', 'cwginstock_product_id', 'cwginstock_variation_id', 'cwginstock_custom_quantity', 'cwginstock_created_via', 'cwg_product_ids', 'cwg_eta_date', 'cwg_stock_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cwginstock_bypass_pid', 'cwginstock_pid', 'cwginstock_subscriber_email', 'cwginstock_mail_on', 'cwginstock_subscriber_personal_data_deleted', 'cwg_total_subscribers', 'cwginstock_bypass_id', 'cwginstock_subscriber_name', 'cwginstock_user_id', 'cwginstock_subscriber_phone', 'cwginstock_product_id', 'cwginstock_variation_id', 'cwginstock_custom_quantity', 'cwginstock_created_via', 'cwg_product_ids', 'cwg_eta_date', 'cwg_stock_message');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cwginstock_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cwginstock_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cwginstock_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cwginstock_%';

