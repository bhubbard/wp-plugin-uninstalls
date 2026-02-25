#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wclp_enable_shop_page'
wp option delete 'wclp_enable_product_page'
wp option delete 'wclp_hide_reset'
wp option delete 'wclp_price_types'
wp option delete 'wclp_title_before'
wp option delete 'wclp_title_after'
wp option delete 'wclp_crossed_price'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wclp_is_disable_on_shop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wclp_is_disable_on_shop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wclp_is_disable_on_shop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wclp_is_disable_on_shop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wclp_is_disable_on_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wclp_is_disable_on_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wclp_is_disable_on_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wclp_is_disable_on_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wclp_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wclp_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wclp_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wclp_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wclp_title_before_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wclp_title_before_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wclp_title_before_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wclp_title_before_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wclp_title_after_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wclp_title_after_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wclp_title_after_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wclp_title_after_price'"
