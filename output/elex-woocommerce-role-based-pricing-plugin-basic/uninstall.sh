#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'eh_pricing_discount_price_adjustment_options'
wp option delete 'eh_pricing_discount_product_price_user_role'
wp option delete 'eh_pricing_discount_product_on_users'
wp option delete 'eh_pricing_discount_cart_user_role_remove_cart_checkout'
wp option delete 'eh_pricing_discount_cart_unregistered_user_remove_cart_checkout'
wp option delete 'eh_pricing_discount_cart_user_role'
wp option delete 'eh_pricing_discount_cart_unregistered_user'
wp option delete 'eh_pricing_discount_cart_user_role_text'
wp option delete 'eh_pricing_discount_cart_unregistered_user_text'
wp option delete 'eh_pricing_discount_replace_cart_user_role'
wp option delete 'eh_pricing_discount_replace_cart_unregistered_user'
wp option delete 'eh_pricing_discount_enable_tax_options'
wp option delete 'eh_pricing_discount_price_tax_options'
wp option delete 'eh_pricing_discount_enable_price_suffix'
wp option delete 'eh_pricing_discount_price_general_price_suffix'
wp option delete 'eh_pricing_discount_role_price_suffix'
wp option delete 'eh_pricing_discount_replace_cart_unregistered_user_text_product'
wp option delete 'eh_pricing_discount_replace_cart_unregistered_user_text_shop'
wp option delete 'eh_pricing_discount_replace_cart_unregistered_user_url_shop'
wp option delete 'eh_pricing_discount_replace_cart_user_role_text_product'
wp option delete 'eh_pricing_discount_replace_cart_user_role_text_shop'
wp option delete 'eh_pricing_discount_replace_cart_user_role_url_shop'
wp option delete 'eh_pricing_discount_multiple_role_price'
wp option delete 'woocommerce_currency'
wp option delete 'wc_price_based_country_regions'
wp option delete 'eh_pricing_discount_hide_regular_price_unregistered'
wp option delete 'eh_pricing_discount_regular_price_user_role'
wp option delete 'eh_pricing_discount_price_user_role'
wp option delete 'eh_pricing_discount_price_unregistered_user'
wp option delete 'eh_pricing_discount_price_user_role_text'
wp option delete 'eh_pricing_discount_price_unregistered_user_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
