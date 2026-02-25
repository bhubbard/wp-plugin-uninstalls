#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'wt_sc_auto_draft_coupons'
wp option delete 'wt_sc_coupons_created'
wp option delete 'wbte_sc_hidden_promotion_banners'
wp option delete 'wt_sc_coupon_lookup_updated'
wp option delete 'wt_sc_coupon_lookup_migration_last_id'
wp option delete 'wbte_sc_basic_activation_hook_version'
wp option delete 'wbte_sc_basic_removed_non_existing_coupons_lookup_tb'
wp option delete 'wbfte_promotion_banner_version'
wp option delete 'wt_hide_invoice_cta_banner'
wp option delete 'wt_hide_smart_coupon_cta_banner'
wp option delete 'wt_hide_product_ie_cta_banner'
wp option delete 'wbte_sc_auto_coupon_priority_added'
wp option delete 'wbte_sc_bogo_menu_higlight_is_removed'
wp option delete 'wbte_sc_new_bogo_actvated'
wp option delete 'wbte_sc_old_bogo_ids'
wp option delete 'wbte_sc_bogo_general_settings'
wp option delete 'wt_smart_coupon_start_date'
wp option delete 'wbte_sc_hide_usage_restriction_pro_cta'
wp option delete 'wt_sc_public_modules'
wp option delete 'wt_sc_common_modules'
wp option delete 'wt_sc_admin_modules'
wp option delete 'wt_disabled_product_for_coupons'
wp option delete 'wt_smart_coupon_options'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'wt-smart-coupon-for-woo'
wp option delete 'wt_sc_coupon_lookup_version'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wbte_sc_bogo_coupon_ids'
wp transient delete 'wt_smart_url_coupon_pending_coupon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_valid_for_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_valid_for_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_valid_for_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_valid_for_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_valid_for_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_valid_for_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_valid_for_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_valid_for_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_make_coupon_available'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_make_coupon_available'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_make_coupon_available'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_make_coupon_available'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_coupon_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_coupon_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_coupon_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_coupon_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_make_auto_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_make_auto_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_make_auto_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_make_auto_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbte_sc_auto_coupon_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbte_sc_auto_coupon_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbte_sc_auto_coupon_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbte_sc_auto_coupon_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbte_sc_bogo_coupon_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbte_sc_bogo_coupon_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbte_sc_bogo_coupon_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbte_sc_bogo_coupon_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_disabled_for_coupons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_disabled_for_coupons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_disabled_for_coupons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_disabled_for_coupons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_bogo_free_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_bogo_free_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_bogo_free_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_bogo_free_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_category_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_category_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_category_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_category_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_bogo_free_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_bogo_free_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_bogo_free_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_bogo_free_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_product_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_product_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_product_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_product_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_bogo_customer_gets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_bogo_customer_gets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_bogo_customer_gets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_bogo_customer_gets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_bogo_product_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_bogo_product_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_bogo_product_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_bogo_product_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_free_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_free_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_free_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_free_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_max_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_max_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_max_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_max_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_coupon_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_coupon_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_coupon_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_coupon_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_coupon_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_coupon_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_coupon_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_coupon_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_coupon_expiry_in_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_coupon_expiry_in_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_coupon_expiry_in_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_coupon_expiry_in_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_coupon_enable_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_coupon_enable_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_coupon_enable_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_coupon_enable_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbte_sc_bogo_code_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbte_sc_bogo_code_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbte_sc_bogo_code_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbte_sc_bogo_code_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_make_coupon_available_in_myaccount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_make_coupon_available_in_myaccount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_make_coupon_available_in_myaccount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_make_coupon_available_in_myaccount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbte_sc_bogo_created_on_sc_bogo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbte_sc_bogo_created_on_sc_bogo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbte_sc_bogo_created_on_sc_bogo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbte_sc_bogo_created_on_sc_bogo'"
