#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_wocuf_pro_funnels_list'
wp option delete 'wps_wocuf_funnels_list'
wp option delete 'wps_ubo_bump_list'
wp option delete 'wps_ubo_global_options'
wp option delete 'mwb_ubo_bump_list'
wp option delete 'mwb_ubo_global_options'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'wps_upsell_lite_offer_post_ids'
wp option delete 'wps_manual_create_upsell'
wp option delete 'wps_ubo_popup_type'
wp option delete 'wps_ubo_popup_delay'
wp option delete 'wps_upsell_global_options'
wp option delete 'wps_upsell_lite_global_options'
wp option delete 'wc_dynamic_discount_rules'
wp option delete 'wps_bump_enable_plugin'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'wps_wocuf_store_checkout_fields_billing_data'
wp option delete 'wps_wocuf_store_checkout_fields_shipping_data'
wp option delete 'wps_wocuf_store_checkout_basic_fields_shipping_data'
wp option delete 'wps_wocuf_store_checkout_basic_fields_billing_data'
wp option delete 'wps_ubo_deleted_abandoned_cart'
wp option delete 'wps_upsell_analytics_configuration'
wp option delete 'wps_code_run_once'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'wps_mrbpfw_for_price_rule'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'user_setting_%'"
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'wc_dynamic_discount_amount'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments'"
wp option delete 'onboarding-data-sent'
wp option delete 'onboarding-data-skipped'
wp option delete 'ql_woocommerce_cart_redirect_after_add'
wp option delete 'wps_wocuf_pro_buy_text'
wp option delete 'wps_wocuf_pro_no_text'
wp option delete 'wps_wocuf_pro_before_offer_price_text'
wp option delete 'wps_wocuf_pro_buy_button_color'
wp option delete 'wps_wocuf_pro_thanks_button_color'
wp option delete 'wps_wocuf_pro_offer_banner_text'
wp option delete 'wps_wocuf_pro_no_offer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps_mmcsfw_symbol_%'"
wp option delete 'wps_wocuf_pro_funnel_default_offer_page'
wp option delete 'active_sitewide_plugins'
wp option delete 'wps_upsell_bump_license_key'
wp option delete 'mwb_upsell_bump_license_key'
wp option delete 'mwb_bump_plugin_update'
wp option delete 'wps_current_screen_data'

# Delete Transients
wp transient delete 'wps_ubo_lite_pro_version_incompatible'
wp transient delete 'wps_upsell_elementor_inactive_notice'
wp transient delete 'wps_ubo_lite_default_settings_tab'
wp transient delete 'wps_upsell_default_settings_tab'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wps_wgm_check_for_notification_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_upsell_funnel_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_upsell_funnel_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_upsell_funnel_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_upsell_funnel_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mrbpfw_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mrbpfw_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mrbpfw_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mrbpfw_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mrbpfw_rule_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mrbpfw_rule_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mrbpfw_rule_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mrbpfw_rule_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mrbpfw_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mrbpfw_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mrbpfw_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mrbpfw_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mrbpfw_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mrbpfw_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mrbpfw_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mrbpfw_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mrbpfw_all_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mrbpfw_all_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mrbpfw_all_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mrbpfw_all_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mrbpfw_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mrbpfw_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mrbpfw_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mrbpfw_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mrbpfw_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mrbpfw_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mrbpfw_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mrbpfw_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_recommendation_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_recommendation_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_recommendation_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_recommendation_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_recommendated_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_recommendated_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_recommendated_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_recommendated_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wgm_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wgm_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wgm_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wgm_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_bump_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_bump_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_bump_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_bump_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_bump_order_process_sales_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_bump_order_process_sales_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_bump_order_process_sales_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_bump_order_process_sales_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_select_option_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_select_option_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_select_option_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_select_option_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_recommendation_discount_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_recommendation_discount_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_recommendation_discount_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_recommendation_discount_val'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_recommendation_enable_for_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_recommendation_enable_for_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_recommendation_enable_for_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_recommendation_enable_for_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_fbt_select_option_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_fbt_select_option_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_fbt_select_option_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_fbt_select_option_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_fbt_discount_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_fbt_discount_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_fbt_discount_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_fbt_discount_val'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_page_layout'"
