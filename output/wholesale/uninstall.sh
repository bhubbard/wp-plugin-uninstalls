#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjwcws_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjwcws_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjwcws_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjwcws_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjwcws_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjwcws_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjwcws_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjwcws_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjwcws_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjwcws_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjwcws_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjwcws_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjwcws_sale_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjwcws_sale_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjwcws_sale_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjwcws_sale_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjwcws_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjwcws_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjwcws_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjwcws_sale_price'"
