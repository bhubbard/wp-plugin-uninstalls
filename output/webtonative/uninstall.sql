-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wton_enable_biometric_login', 'wtn_iap_settings', 'wton_apple_p8_key', 'wton_enable_push_notification', 'wton_one_signal_app_id', 'wton_push_notification_rest_key', 'wton_notification_key', 'wton_google_login_config', 'wton_facebook_login_config', 'wton_social_login_settings', 'qtmedia_enable_audio_monitoring', 'qtmedia_enable_video_monitoring', 'simple_iap_appstore_secret', 'simple_iap_callback_function', 'wton_push_notification_title_order_placed', 'wton_push_notification_event_order_placed', 'wtn_biometric_enabled', 'wtn_biometric_prompt_on_logout', 'wtn_biometric_prompt_on_resume', 'wtn_biometric_prompt_on_open', 'wtn_biometric_delay', 'wtn_radio_player_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wtn_subscription_expiration_ms', '_wtn_subscription_transaction_id', '_wtn_subscription_purchase_date_ms', '_wtn_payment_data', '_wtn_subscription_original_transaction_id', '_wtn_subscription_original_purchase_date_ms', '_wtn_google_play_product_id', '_wtn_app_store_product_id', '_wtn_product_type', '_wtn_is_consumable', '_is_tutor_order_for_course', 'wtn_biometric_secret');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wtn_subscription_expiration_ms', '_wtn_subscription_transaction_id', '_wtn_subscription_purchase_date_ms', '_wtn_payment_data', '_wtn_subscription_original_transaction_id', '_wtn_subscription_original_purchase_date_ms', '_wtn_google_play_product_id', '_wtn_app_store_product_id', '_wtn_product_type', '_wtn_is_consumable', '_is_tutor_order_for_course', 'wtn_biometric_secret');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wtn_subscription_expiration_ms', '_wtn_subscription_transaction_id', '_wtn_subscription_purchase_date_ms', '_wtn_payment_data', '_wtn_subscription_original_transaction_id', '_wtn_subscription_original_purchase_date_ms', '_wtn_google_play_product_id', '_wtn_app_store_product_id', '_wtn_product_type', '_wtn_is_consumable', '_is_tutor_order_for_course', 'wtn_biometric_secret');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wtn_subscription_expiration_ms', '_wtn_subscription_transaction_id', '_wtn_subscription_purchase_date_ms', '_wtn_payment_data', '_wtn_subscription_original_transaction_id', '_wtn_subscription_original_purchase_date_ms', '_wtn_google_play_product_id', '_wtn_app_store_product_id', '_wtn_product_type', '_wtn_is_consumable', '_is_tutor_order_for_course', 'wtn_biometric_secret');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tutor_order_for_course_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tutor_order_for_course_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tutor_order_for_course_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tutor_order_for_course_id_%';

