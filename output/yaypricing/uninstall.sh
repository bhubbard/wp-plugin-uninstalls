#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yaydp_product_pricing_rules'
wp option delete 'yaydp_removed_product_pricing_rules'
wp option delete 'yaydp_cart_discount_rules'
wp option delete 'yaydp_removed_cart_discount_rules'
wp option delete 'yaydp_checkout_fee_rules'
wp option delete 'yaydp_removed_checkout_fee_rules'
wp option delete 'yaydp_exclude_rules'
wp option delete 'yaydp_product_collections_rules'
wp option delete 'yaydp_core_settings'
wp option delete 'yaydp_rules'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'yaydp_prevent_yaycurrency_convert_hooks'

# Clear Cron Jobs
wp cron event delete 'yaydp_clear_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yaydp_product_pricing_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yaydp_product_pricing_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yaydp_product_pricing_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yaydp_product_pricing_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yaydp_cart_discount_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yaydp_cart_discount_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yaydp_cart_discount_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yaydp_cart_discount_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yaydp_checkout_fee_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yaydp_checkout_fee_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yaydp_checkout_fee_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yaydp_checkout_fee_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2bking_registration_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2bking_registration_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2bking_registration_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2bking_registration_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'saso_eventtickets_is_ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'saso_eventtickets_is_ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'saso_eventtickets_is_ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'saso_eventtickets_is_ticket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_extra_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_extra_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_extra_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_extra_product'"
