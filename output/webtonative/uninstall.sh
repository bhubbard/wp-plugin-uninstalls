#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wton_enable_biometric_login'
wp option delete 'wtn_iap_settings'
wp option delete 'wton_apple_p8_key'
wp option delete 'wton_enable_push_notification'
wp option delete 'wton_one_signal_app_id'
wp option delete 'wton_push_notification_rest_key'
wp option delete 'wton_notification_key'
wp option delete 'wton_google_login_config'
wp option delete 'wton_facebook_login_config'
wp option delete 'wton_social_login_settings'
wp option delete 'qtmedia_enable_audio_monitoring'
wp option delete 'qtmedia_enable_video_monitoring'
wp option delete 'simple_iap_appstore_secret'
wp option delete 'simple_iap_callback_function'
wp option delete 'wton_push_notification_title_order_placed'
wp option delete 'wton_push_notification_event_order_placed'
wp option delete 'wtn_biometric_enabled'
wp option delete 'wtn_biometric_prompt_on_logout'
wp option delete 'wtn_biometric_prompt_on_resume'
wp option delete 'wtn_biometric_prompt_on_open'
wp option delete 'wtn_biometric_delay'
wp option delete 'wtn_radio_player_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_subscription_expiration_ms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_subscription_expiration_ms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_subscription_expiration_ms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_subscription_expiration_ms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_subscription_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_subscription_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_subscription_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_subscription_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_subscription_purchase_date_ms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_subscription_purchase_date_ms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_subscription_purchase_date_ms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_subscription_purchase_date_ms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_payment_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_payment_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_payment_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_payment_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_subscription_original_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_subscription_original_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_subscription_original_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_subscription_original_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_subscription_original_purchase_date_ms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_subscription_original_purchase_date_ms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_subscription_original_purchase_date_ms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_subscription_original_purchase_date_ms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_google_play_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_google_play_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_google_play_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_google_play_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_app_store_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_app_store_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_app_store_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_app_store_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtn_is_consumable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtn_is_consumable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtn_is_consumable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtn_is_consumable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_tutor_order_for_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_tutor_order_for_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_tutor_order_for_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_tutor_order_for_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_tutor_order_for_course_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_tutor_order_for_course_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_tutor_order_for_course_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tutor_order_for_course_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtn_biometric_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtn_biometric_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtn_biometric_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtn_biometric_secret'"
