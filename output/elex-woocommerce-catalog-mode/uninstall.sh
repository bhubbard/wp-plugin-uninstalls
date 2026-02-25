#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elex_first_installation_msg'
wp option delete 'active_sitewide_plugins'
wp option delete 'eh_product_choose_sale_regular'
wp option delete 'eh_pricing_discount_cart_catalog_mode_remove_cart_checkout'
wp option delete 'eh_pricing_discount_price_catalog_mode_exclude_admin'
wp option delete 'eh_pricing_discount_cart_catalog_mode'
wp option delete 'elex_catalog_remove_addtocart_shop'
wp option delete 'eh_pricing_discount_cart_catalog_mode_text'
wp option delete 'eh_pricing_discount_cart_user_role_text'
wp option delete 'eh_pricing_discount_cart_unregistered_user_text'
wp option delete 'elex_catalog_remove_addtocart_product'
wp option delete 'eh_pricing_discount_replace_cart_catalog_mode'
wp option delete 'eh_pricing_discount_price_adjustment_options'
wp option delete 'eh_pricing_discount_replace_cart_catalog_mode_text_product'
wp option delete 'eh_pricing_discount_replace_cart_catalog_mode_text_shop'
wp option delete 'eh_pricing_discount_replace_cart_catalog_mode_url_shop'
wp option delete 'eh_catalog_pricing_discount_price_catalog_mode'
wp option delete 'eh_catalog_pricing_discount_price_catalog_mode_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_price_catalog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_price_catalog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_price_catalog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_price_catalog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eh_pricing_adjustment_product_price_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eh_pricing_adjustment_product_price_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eh_pricing_adjustment_product_price_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eh_pricing_adjustment_product_price_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_price_unregistered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_price_unregistered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_price_unregistered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_price_unregistered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_catalog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_catalog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_catalog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_catalog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_unregistered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_unregistered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_unregistered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_price_placeholder_unregistered'"
