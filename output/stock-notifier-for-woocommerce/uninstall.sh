#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'stock_notifier_select_api_value'
wp option delete 'stock_notifier_whatsapp_toggle'
wp option delete 'stock_notifier_ultimate_active'
wp option delete 'stock_notifier_license_key'
wp option delete 'stock_notifier_dokan_active_or_not'
wp option delete 'stock_notifier_pro_active'
wp option delete 'stock_notifier_plugin_active_first_time'
wp option delete 'stock_notifier_premium_license_1'
wp option delete 'stock_notifier_customs_csss'
wp option delete 'stock_notifier_twilio_SMS_SID'
wp option delete 'stock_notifier_twilio_SMS_token'
wp option delete 'stock_notifier_twilio_SMS_senderNumber'
wp option delete 'stock_notifier_twilio_SID'
wp option delete 'stock_notifier_twilio_token'
wp option delete 'stock_notifier_twilio_senderNumber'
wp option delete 'stock_notifier_chatapi_token'
wp option delete 'stock_notifier_ultramsg_insatnceID'
wp option delete 'stock_notifier_ultramsg_token'
wp option delete 'stock_notifier_stock_progress_bar'
wp option delete 'stock_notifier_stock_progress_bar_style'
wp option delete 'stock_notifier_loop_product_visibility'
wp option delete 'stock_notifier_hide_sub_non_log'
wp option delete 'stock_notifier_hide_subscribe_loggedin'
wp option delete 'stock_notifier_show_subscribe_on_backorder'
wp option delete 'stock_notifier_hide_subscribe_regular_product'
wp option delete 'stock_notifier_hide_subscribe_sale_product'
wp option delete 'stock_notifier_ignore_disabled_variation'
wp option delete 'stock_notifier_specific_tags_visibility'
wp option delete 'stock_notifier_specific_tags'
wp option delete 'stock_notifier_specific_categories_visibility'
wp option delete 'stock_notifier_specific_categories'
wp option delete 'stock_notifier_specific_products_visibility'
wp option delete 'stock_notifier_specific_products'
wp option delete 'stock_notifier_frontent_form_placeholder'
wp option delete 'stock_notifier_frontent_form_button'
wp option delete 'stock_notifier_success_subscription_description'
wp option delete 'stock_notifier_button_color'
wp option delete 'stock_notifier_button_border_color'
wp option delete 'stock_notifier_button_text_color'
wp option delete 'stock_notifier_default_country_code'
wp option delete 'stock_notifier_enable_success_subscription'
wp option delete 'stock_notifier_success_sub_subject'
wp option delete 'stock_notifier_success_sub_message'
wp option delete 'stock_notifier_success_sub_email_subject'
wp option delete 'stock_notifier_success_sub_email_message'
wp option delete 'stock_notifier_enable_instock_sms'
wp option delete 'stock_notifier_enable_instock_sms_image'
wp option delete 'stock_notifier_enable_success_subscription_image'
wp option delete 'stock_notifier_instock_sub_subject'
wp option delete 'stock_notifier_instock_sub_message'
wp option delete 'stock_notifier_instock_sub_email_subject'
wp option delete 'stock_notifier_instock_sub_email_message'
wp option delete 'stock_notifier_multivendor_on_off'
wp option delete 'stock_notifier_success_subscription_description_gmail'
wp option delete 'stock_notifier_subscriber_time'
wp option delete 'stock_notifier_wp_sms_active'
wp option delete 'stock_notifier_frontent_form_email_placeholder'
wp option delete 'stock_notifier_free_active'
wp option delete 'stock_notifier_version'
wp option delete 'stock_notifier_install_time'

# Delete Transients
wp transient delete 'subscriber_count'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_subscriber_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_subscriber_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_subscriber_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_subscriber_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_product_upload_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_product_upload_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_product_upload_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_product_upload_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_subscriber_gmail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_subscriber_gmail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_subscriber_gmail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_subscriber_gmail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_subscriber_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_subscriber_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_subscriber_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_subscriber_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_pid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_pid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_pid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_pid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_set_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_set_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_set_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_set_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifier_whatsapp_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifier_whatsapp_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifier_whatsapp_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifier_whatsapp_number'"
