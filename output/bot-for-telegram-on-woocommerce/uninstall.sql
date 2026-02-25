-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'woocommerce_currency', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_price_num_decimals', 'woocommerce_currency_pos', 'downloaded_font_files', 'bftow_notification_public_channel_id', 'bftow_notification_channel_id', 'bftow_patch_settings', 'bftow_settings', 'bftow_test', 'bftow_test1', 'bftow_pro_status');
DELETE FROM wp_options WHERE option_name LIKE 'bftow_enable_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'bftow_chat_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'bftow_last_action_%';
DELETE FROM wp_options WHERE option_name LIKE 'bftow_get_last_user_action_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bftow_user_token', 'bftow_user_name', 'bftow_phone', '_location', 'bftow_formatted_address', '_phone', '_price', 'bftow_user_blocked', 'billing_first_name', 'billing_last_name', 'bftow_username', 'bftow_photo_url', 'bftow_telegram_chat_id', 'bftow_user_system_id', 'billing_phone', 'bftow_is_sent_to_customer', '_customer_user', 'co_instructor', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_country', 'billing_state', 'billing_postcode', 'bftow_pro_is_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('bftow_user_token', 'bftow_user_name', 'bftow_phone', '_location', 'bftow_formatted_address', '_phone', '_price', 'bftow_user_blocked', 'billing_first_name', 'billing_last_name', 'bftow_username', 'bftow_photo_url', 'bftow_telegram_chat_id', 'bftow_user_system_id', 'billing_phone', 'bftow_is_sent_to_customer', '_customer_user', 'co_instructor', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_country', 'billing_state', 'billing_postcode', 'bftow_pro_is_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('bftow_user_token', 'bftow_user_name', 'bftow_phone', '_location', 'bftow_formatted_address', '_phone', '_price', 'bftow_user_blocked', 'billing_first_name', 'billing_last_name', 'bftow_username', 'bftow_photo_url', 'bftow_telegram_chat_id', 'bftow_user_system_id', 'billing_phone', 'bftow_is_sent_to_customer', '_customer_user', 'co_instructor', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_country', 'billing_state', 'billing_postcode', 'bftow_pro_is_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bftow_user_token', 'bftow_user_name', 'bftow_phone', '_location', 'bftow_formatted_address', '_phone', '_price', 'bftow_user_blocked', 'billing_first_name', 'billing_last_name', 'bftow_username', 'bftow_photo_url', 'bftow_telegram_chat_id', 'bftow_user_system_id', 'billing_phone', 'bftow_is_sent_to_customer', '_customer_user', 'co_instructor', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_country', 'billing_state', 'billing_postcode', 'bftow_pro_is_sent');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_end';

