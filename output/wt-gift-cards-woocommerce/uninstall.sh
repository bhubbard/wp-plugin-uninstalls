#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbte_gc_smart_coupon_menu_higlight_is_removed'
wp option delete 'wbte_sc_hidden_promotion_banners'
wp option delete 'wt_gc_products_old_visibility_state'
wp option delete 'wt_gc_migrated_from_smart_coupon'
wp option delete 'wt-smart-coupon-for-woo_store_credit'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_email_footer_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_gc_templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_gc_templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_gc_templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_gc_templates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_gc_enable_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_gc_enable_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_gc_enable_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_gc_enable_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_smart_coupon_credit_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_smart_coupon_credit_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_smart_coupon_credit_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_smart_coupon_credit_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_smart_coupon_initial_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_smart_coupon_initial_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_smart_coupon_initial_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_smart_coupon_initial_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_gc_gift_card_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_gc_gift_card_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_gc_gift_card_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_gc_gift_card_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wt_credit_coupons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wt_credit_coupons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wt_credit_coupons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wt_credit_coupons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wt_auto_generated_store_credit_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wt_auto_generated_store_credit_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wt_auto_generated_store_credit_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wt_auto_generated_store_credit_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_gc_auto_generated_store_credit_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_gc_auto_generated_store_credit_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_gc_auto_generated_store_credit_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_gc_auto_generated_store_credit_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_gc_store_credit_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_gc_store_credit_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_gc_store_credit_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_gc_store_credit_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_gc_purchase_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_gc_purchase_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_gc_purchase_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_gc_purchase_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_gc_amounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_gc_amounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_gc_amounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_gc_amounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_send_date_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_send_date_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_send_date_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_send_date_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wt_credit_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wt_credit_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wt_credit_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wt_credit_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_send_the_generated_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_send_the_generated_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_send_the_generated_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_send_the_generated_credit'"
