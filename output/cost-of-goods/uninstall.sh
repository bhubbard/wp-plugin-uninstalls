#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_of_goods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_of_goods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_of_goods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_of_goods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rewrite_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rewrite_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rewrite_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rewrite_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'regular_price_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'regular_price_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'regular_price_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'regular_price_vat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profit'"
