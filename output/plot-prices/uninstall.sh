#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'charttype'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chart_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chart_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chart_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chart_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chart_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chart_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chart_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chart_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chart_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chart_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chart_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chart_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
