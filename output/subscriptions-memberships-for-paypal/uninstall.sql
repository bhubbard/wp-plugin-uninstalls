-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpeppsub_notice_shown', 'wpeppsub_settingsoptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpeppsub_button_sku', 'wpeppsub_button_currency', 'wpeppsub_button_language', 'wpeppsub_button_buttonsize', 'wpeppsub_a3', 'wpeppsub_p3', 'wpeppsub_t3', 'wpeppsub_srt', 'wpeppsub_trial_1', 'wpeppsub_a1', 'wpeppsub_p1', 'wpeppsub_t1', 'wpeppsub_button_show', 'wpeppsub_button_name', 'wpeppsub_order_data', 'wpeppsub_order_status', 'wpeppsub_order_expires_date', 'wpeppsub_button_account', 'wpeppsub_button_return');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpeppsub_button_sku', 'wpeppsub_button_currency', 'wpeppsub_button_language', 'wpeppsub_button_buttonsize', 'wpeppsub_a3', 'wpeppsub_p3', 'wpeppsub_t3', 'wpeppsub_srt', 'wpeppsub_trial_1', 'wpeppsub_a1', 'wpeppsub_p1', 'wpeppsub_t1', 'wpeppsub_button_show', 'wpeppsub_button_name', 'wpeppsub_order_data', 'wpeppsub_order_status', 'wpeppsub_order_expires_date', 'wpeppsub_button_account', 'wpeppsub_button_return');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpeppsub_button_sku', 'wpeppsub_button_currency', 'wpeppsub_button_language', 'wpeppsub_button_buttonsize', 'wpeppsub_a3', 'wpeppsub_p3', 'wpeppsub_t3', 'wpeppsub_srt', 'wpeppsub_trial_1', 'wpeppsub_a1', 'wpeppsub_p1', 'wpeppsub_t1', 'wpeppsub_button_show', 'wpeppsub_button_name', 'wpeppsub_order_data', 'wpeppsub_order_status', 'wpeppsub_order_expires_date', 'wpeppsub_button_account', 'wpeppsub_button_return');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpeppsub_button_sku', 'wpeppsub_button_currency', 'wpeppsub_button_language', 'wpeppsub_button_buttonsize', 'wpeppsub_a3', 'wpeppsub_p3', 'wpeppsub_t3', 'wpeppsub_srt', 'wpeppsub_trial_1', 'wpeppsub_a1', 'wpeppsub_p1', 'wpeppsub_t1', 'wpeppsub_button_show', 'wpeppsub_button_name', 'wpeppsub_order_data', 'wpeppsub_order_status', 'wpeppsub_order_expires_date', 'wpeppsub_button_account', 'wpeppsub_button_return');

