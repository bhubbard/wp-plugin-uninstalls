#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_status_in_isee'
wp option delete 'wpei_show_datasheets'

# Delete Transients
wp transient delete 'cached_chart_data'
wp transient delete 'cached_most_searched_keywords'
wp transient delete 'shop_ranking_data'
wp transient delete 'cached_most_clicked_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_english_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_english_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_english_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_english_name'"
