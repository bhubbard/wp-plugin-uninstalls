#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tinvwl_activation_date'
wp option delete 'tinvwl_notifications_postponed'
wp option delete 'rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ver'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_ver'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tinvwl-%'"
wp option delete 'tinvwl_wizard'
wp option delete 'eh_pricing_discount_cart_catalog_mode'
wp option delete 'elex_catalog_remove_addtocart_product'
wp option delete 'eh_pricing_discount_price_catalog_mode_exclude_admin'
wp option delete 'woocommerce_enable_giftcard_info_requirements'
wp option delete 'woocommerce_giftcard_to'
wp option delete 'woocommerce_giftcard_toEmail'
wp option delete 'woocommerce_giftcard_address'
wp option delete 'wpa_field_name'
wp option delete 'pewc_hide_zero'
wp option delete '_woosb_bundled_link'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'WpFastestCacheExclude'
wp option delete 'yith_wapo_settings_show_product_price_cart'
wp option delete 'yith_wapo_show_options_in_cart'
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-style_options'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_dynamic_' OR option_name LIKE '_site_transient_%_dynamic_'"
wp transient delete 'tinvwl-admin-notice-delay'
wp transient delete '_tinvwl_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rocket_get_refreshed_fragments_cache_%' OR option_name LIKE '_site_transient_rocket_get_refreshed_fragments_cache_%'"
wp transient delete 'rocket_get_refreshed_fragments_cache'

# Clear Cron Jobs
wp cron event delete 'tinvwl_disable_notifications_event'
wp cron event delete 'tinvwl_remove_without_author_wishlist'
wp cron event delete 'tinvwl_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tinvwl-user-review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tinvwl-user-review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tinvwl-user-review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tinvwl-user-review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tinvwl-user-premium'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tinvwl-user-premium'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tinvwl-user-premium'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tinvwl-user-premium'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_giftcard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_giftcard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_giftcard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_giftcard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_rule_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_rule_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_rule_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_rule_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_hide_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_hide_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_hide_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_hide_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_hide_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_hide_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_hide_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_hide_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_hide_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_hide_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_hide_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_hide_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_is_hide_addtocart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_is_hide_addtocart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_is_hide_addtocart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_is_hide_addtocart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_custom_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_custom_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_custom_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_custom_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_custom_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_custom_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_custom_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_custom_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_contact7_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_contact7_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_contact7_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_contact7_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_hide_for_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_hide_for_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_hide_for_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_hide_for_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_apply_on_all_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_apply_on_all_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_apply_on_all_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_apply_on_all_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wishlist_analytics_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wishlist_analytics_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wishlist_analytics_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wishlist_analytics_processed'"
