#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dt_colums_settings'
wp option delete 'bs_filter_query'
wp option delete 'default_product_cat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
