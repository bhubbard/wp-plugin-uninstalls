#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'wcfm_commission_options'
wp option delete 'wcfm_shipping_options'
wp option delete 'woocommerce_wcfmmp_product_shipping_by_distance_settings'
wp option delete 'wcfm_page_options'
wp option delete 'wcfmmp_style_custom'
wp option delete 'wcfm_updated_end_point_ledger'
wp option delete 'wcfm_screen_manager'
wp option delete 'wcfm_updated_end_point_media'
wp option delete 'wcfmmp_notification_options'
wp option delete 'wcfmmp_notification_email'
wp option delete 'wc_twilio_sms_admin_sms_recipients'
wp option delete 'admin_phone_number'
wp option delete 'msg_api_key'
wp option delete 'sms_sender_id'
wp option delete 'netgsm_cf7_to_admin_no'
wp option delete 'wc_twilio_sms_shorten_urls'
wp option delete 'wcfm_updated_end_point_sell_items_catalog'
wp option delete 'wcfm_capability_options'
wp option delete 'wcfm_store_color_settings'
wp option delete 'wcfm_updated_end_point_refund'
wp option delete 'wcfm_updated_end_point_reviews'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'wcfm_store_url'
wp option delete 'wcfm_store_endpoints'
wp option delete 'wcfm_withdrawal_options'
wp option delete 'wcfmmp_wirecard_token_generator'
wp option delete 'wcfmmp_wirecard_app_id'
wp option delete 'wcfmmp_wirecard_secret'
wp option delete 'wcfmmp_wirecard_access_token'
wp option delete 'woocommerce_wcfmmp_product_shipping_by_zone_settings'
wp option delete 'woocommerce_wcfmmp_product_shipping_by_country_settings'
wp option delete 'woocommerce_wcfmmp_product_shipping_by_weight_settings'
wp option delete '_wcfmmp_shipping_by_country'
wp option delete '_wcfmmp_country_rates'
wp option delete '_wcfmmp_state_rates'
wp option delete '_wcfmmp_shipping_by_weight'
wp option delete 'woocommerce_weight_unit'
wp option delete '_wcfmmp_country_weight_rates'
wp option delete '_wcfmmp_country_weight_mode'
wp option delete '_wcfmmp_country_weight_unit_cost'
wp option delete '_wcfmmp_country_weight_default_costs'
wp option delete '_wcfmmp_shipping_by_distance'
wp option delete '_wcfmmp_shipping_by_distance_rates'
wp option delete 'wcfm_refund_options'
wp option delete 'wcfm_review_options'
wp option delete 'wcfm_membership_options'
wp option delete 'wcfm_data_cleanup_options'
wp option delete 'wcfm_store_hours_options'
wp option delete 'wcfm_vendor_invoice_options'
wp option delete 'ywraq_page_id'
wp option delete 'wcfm_marketplace_options'
wp option delete 'wcfmmp_updated_3_3_10'
wp option delete 'wcfmmp_installed'
wp option delete 'wcfmmp_table_install'
wp option delete 'wcfmmp_page_install'
wp option delete 'active_sitewide_plugins'
wp option delete 'wcfm_vendor_membership_page_id'
wp option delete 'wcfm_vendor_registration_page_id'
wp option delete 'wcfm_style_custom'
wp option delete 'wcfm_site_logo'
wp option delete 'wcfm_table_install'
wp option delete 'wcfmaf_table_install'
wp option delete 'wcfmd_table_install'
wp option delete 'wcfm_withdraw_order_status'
wp option delete 'wc_twilio_sms_enable_admin_sms'
wp option delete 'wc_twilio_sms_admin_sms_template'
wp option delete 'wc_twilio_sms_checkout_optin_checkbox_label'
wp option delete 'wc_twilio_sms_send_sms_order_statuses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sms_template'"
wp option delete 'wc_twilio_sms_default_sms_template'
wp option delete 'woocommerce_stripe_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete '_wc_activation_redirect'
wp transient delete '_wcfmmp_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcfmmp_stripe_processing_intent_%' OR option_name LIKE '_site_transient_wcfmmp_stripe_processing_intent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stripe_sources_%' OR option_name LIKE '_site_transient_stripe_sources_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stripe_customer_%' OR option_name LIKE '_site_transient_stripe_customer_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_total_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_total_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_total_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_total_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_total_review_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_total_review_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_total_review_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_total_review_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_avg_review_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_avg_review_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_avg_review_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_avg_review_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_category_review_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_category_review_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_category_review_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_category_review_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_last_author_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_last_author_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_last_author_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_last_author_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_last_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_last_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_last_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_last_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_store_offline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_store_offline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_store_offline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_store_offline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_connected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_connected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_connected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_connected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_wirecard_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_wirecard_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_wirecard_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_wirecard_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_wirecard_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_wirecard_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_wirecard_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_wirecard_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_has_multi_selling'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_has_multi_selling'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_has_multi_selling'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_has_multi_selling'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_multi_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_multi_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_multi_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_multi_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_product_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_product_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_product_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_product_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_review_product_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_review_product_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_review_product_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_review_product_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfm_membership'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfm_membership'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfm_membership'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfm_membership'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_overwrite_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_overwrite_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_overwrite_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_overwrite_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_additional_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_additional_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_additional_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_additional_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_additional_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_additional_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_additional_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_additional_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_processing_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_processing_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_processing_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_processing_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_shipping_by_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_shipping_by_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_shipping_by_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_shipping_by_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_country_rates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_country_rates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_country_rates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_country_rates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_state_rates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_state_rates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_state_rates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_state_rates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_shipping_by_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_shipping_by_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_shipping_by_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_shipping_by_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_country_weight_rates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_country_weight_rates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_country_weight_rates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_country_weight_rates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_country_weight_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_country_weight_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_country_weight_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_country_weight_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_country_weight_unit_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_country_weight_unit_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_country_weight_unit_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_country_weight_unit_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_country_weight_default_costs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_country_weight_default_costs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_country_weight_default_costs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_country_weight_default_costs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_shipping_by_distance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_shipping_by_distance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_shipping_by_distance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_shipping_by_distance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_shipping_by_distance_rates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_shipping_by_distance_rates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_shipping_by_distance_rates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_shipping_by_distance_rates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfm_user_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfm_user_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfm_user_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfm_user_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'membership_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'membership_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'membership_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'membership_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfm_register_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfm_register_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfm_register_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfm_register_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfm_vendor_store_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfm_vendor_store_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfm_vendor_store_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfm_vendor_store_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfm_vendor_store_hours_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfm_vendor_store_hours_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfm_vendor_store_hours_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfm_vendor_store_hours_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_vendor_tax_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_vendor_tax_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_vendor_tax_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_vendor_tax_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_store_product_cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_store_product_cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_store_product_cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_store_product_cats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_followers_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_followers_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_followers_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_followers_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_following_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_following_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_following_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_following_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmvm_custom_infos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmvm_custom_infos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmvm_custom_infos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmvm_custom_infos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_product_offline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_product_offline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_product_offline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_product_offline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_setup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_setup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_setup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_setup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfm_policy_vendor_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfm_policy_vendor_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfm_policy_vendor_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfm_policy_vendor_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_publishable_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_publishable_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_publishable_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_publishable_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcfm_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcfm_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcfm_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcfm_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_stripe_customer_saved_cards'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_stripe_customer_saved_cards'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_stripe_customer_saved_cards'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_stripe_customer_saved_cards'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_stripe_split_pay_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_stripe_split_pay_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_stripe_split_pay_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_stripe_split_pay_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_account_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_account_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_account_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_account_capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
