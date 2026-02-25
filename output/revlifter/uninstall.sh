#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revlifter_uuid'
wp option delete 'revlifter_hide_stock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'promotion_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'promotion_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'promotion_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'promotion_name'"
