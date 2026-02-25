#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woodpd_products_button'
wp option delete 'woodpd_simple_product_button '
wp option delete 'woodpd_after_product_button '
wp option delete 'woodpd_read_more_text'
wp option delete 'woodpd_cart_url'
wp option delete 'woodpd_add_to_cart_text'
wp option delete 'woodpd_buy_now_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_price_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_price_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_price_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_price_id'"
