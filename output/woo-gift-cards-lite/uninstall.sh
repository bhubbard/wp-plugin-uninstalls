#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_wgm_general_settings'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'wps_uwgc_templateid'
wp option delete 'wps_wgm_new_mom_template'
wp option delete 'wps_wgm_gift_for_you'
wp option delete 'wps_wgm_insert_custom_template'
wp option delete 'wps_wgm_merry_christmas_template'
wp option delete 'wps_wgm_notify_new_msg_id'
wp option delete 'wps_wgm_notify_new_message'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_banner_type'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'wps_wgm_notify_hide_notification'
wp option delete 'wps_uwgc_all_templates_imported'
wp option delete 'contributor_product_id'
wp option delete 'wps_gccoupon_rechargeable_product_id'
wp option delete 'gc_expiry_extension_product_id'
wp option delete 'wps_wgm_product_settings'
wp option delete 'wps_wgm_offline_giftcard'
wp option delete 'giftcard_offline_redeem_link'
wp option delete 'wps_gw_lcns_key'
wp option delete 'wps_wgm_gifting_api_keys'
wp option delete 'wps_wgm_gifting_request'
wp option delete 'woocommerce_currency'
wp option delete 'giftcard_offline_redeem_settings'
wp option delete 'wps_wgm_delivery_settings'
wp option delete 'wps_wgm_mail_settings'
wp option delete 'wps_wgm_other_settings'
wp option delete 'onboarding-data-sent'
wp option delete 'onboarding-data-skipped'
wp option delete 'wps_gw_new_gift_card_page_layout'
wp option delete 'wps_gw_new_gift_card_page_layout_yes'
wp option delete 'wps_wgm_general_setting_enable'
wp option delete 'wps_wgm_general_setting_tax_cal_enable'
wp option delete 'wps_wgm_general_setting_shop_page_enable'
wp option delete 'wps_wgm_general_setting_giftcard_individual_use'
wp option delete 'wps_wgm_general_setting_giftcard_freeshipping'
wp option delete 'wps_wgm_general_setting_giftcard_coupon_length'
wp option delete 'wps_wgm_general_setting_giftcard_prefix'
wp option delete 'wps_wgm_general_setting_giftcard_expiry'
wp option delete 'wps_wgm_general_setting_giftcard_minspend'
wp option delete 'wps_wgm_general_setting_giftcard_maxspend'
wp option delete 'wps_wgm_general_setting_giftcard_use'
wp option delete 'wps_wgm_product_setting_exclude_product'
wp option delete 'wps_wgm_product_setting_exclude_category'
wp option delete 'wps_wgm_product_setting_giftcard_ex_sale'
wp option delete 'wps_wgm_other_setting_upload_logo'
wp option delete 'wps_wgm_other_setting_giftcard_subject'
wp option delete 'wps_wgm_other_setting_giftcard_html'
wp option delete 'wps_wgm_delivery_setting_method'
wp option delete 'wps_wgm_additional_apply_coupon_disable'
wp option delete 'wps_wgm_new_gift_card_page_layout'
wp option delete 'wps_wgm_general_setting_giftcard_applybeforetx'
wp option delete 'wps_wgm_product_setting_exclude_product_format'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'wps_wgm_select_email_format'
wp option delete 'wps_wgm_general_setting_select_template'
wp option delete 'wps_wpr_settings_gallery'
wp option delete 'wps_wsfw_enable_email_notification_for_wallet_update'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wps_wpr_notificatin_array'
wp option delete 'wps_wgc_create_gift_card_taxonomy'
wp option delete 'wps_gw_lcns_status'
wp option delete 'wps_gw_lcns_thirty_days'
wp option delete 'check_balance_page_created_org'
wp option delete 'check_balance_page_created'
wp option delete 'giftcard_balance'

# Delete Transients
wp transient delete 'wps-wgm-giftcard-setting-notice'
wp transient delete 'wps_coupon_bulk_action_notice'

# Clear Cron Jobs
wp cron event delete 'wps_wgm_check_for_notification_update'
wp cron event delete 'wps_reset_gifting_request'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_customizable_giftware'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_customizable_giftware'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_customizable_giftware'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_customizable_giftware'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_local_setting_giftcard_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_local_setting_giftcard_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_local_setting_giftcard_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_local_setting_giftcard_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_giftcard_coupon_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_mail_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_giftcard_coupon_mail_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_mail_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_mail_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_uwgc_used_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_uwgc_used_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_uwgc_used_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_uwgc_used_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_unique'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_giftcard_coupon_unique'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_unique'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_giftcard_coupon_unique'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_giftcard_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_giftcard_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_giftcard_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_giftcard_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_giftcard_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_giftcard_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_giftcard_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_giftcard_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_imported_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_imported_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_imported_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_imported_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_recommanded_per_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_recommanded_per_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_recommanded_per_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_recommanded_per_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zone_pricing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zone_pricing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zone_pricing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zone_pricing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_pricing_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_pricing_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_pricing_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_pricing_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_excluded_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_excluded_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_excluded_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_excluded_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sell_as_a_giftcard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sell_as_a_giftcard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sell_as_a_giftcard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sell_as_a_giftcard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_is_group_gift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_is_group_gift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_is_group_gift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_is_group_gift'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_after_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_after_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_after_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_after_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'points_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'points_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'points_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'points_details'"
