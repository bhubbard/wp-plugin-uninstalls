#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nivo_search_default_preset_created'
wp option delete 'nivo_search_enable_ajax'
wp option delete 'nivo_search_excluded_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nivo_search_generale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nivo_search_generale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nivo_search_generale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nivo_search_generale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nivo_search_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nivo_search_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nivo_search_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nivo_search_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nivo_search_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nivo_search_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nivo_search_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nivo_search_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nivo_search_query'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nivo_search_query'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nivo_search_query'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nivo_search_query'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
