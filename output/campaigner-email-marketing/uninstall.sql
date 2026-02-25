-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('campemma_auth_status', 'campemma_back_in_stock_button_type', 'campemma_back_in_stock_is_activate', 'campemma_account_id', 'campemma_consumer_key', 'campemma_consumer_secret', 'woocommerce_manage_stock', 'campemma_notify_me_title', 'campemma_notify_me_placeholder', 'campemma_notify_me_button_label', 'campemma_notify_me_button_color', 'campemma_notify_me_button_text_color', 'campemma_account_connected', 'classic-editor-replace', 'classic-editor-allow-users', 'campemma_preferences', 'campemma_username', 'campemma_password', 'campemma_cmp_user_jwt', 'campemma_accounts_data', 'campemma_user_type', 'campemma_store_id', 'campemma_store_name', 'campemma_account_name', 'campemma_auth_url');
DELETE FROM wp_options WHERE option_name LIKE 'campemma_wc_auth_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_previous_stock_status', '_previous_stock_quantity', 'classic-editor-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_previous_stock_status', '_previous_stock_quantity', 'classic-editor-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_previous_stock_status', '_previous_stock_quantity', 'classic-editor-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_previous_stock_status', '_previous_stock_quantity', 'classic-editor-settings');

