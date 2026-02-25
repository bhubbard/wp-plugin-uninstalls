#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beeking_search_api_key'
wp option delete 'beeking_search_use_ai'
wp option delete 'beeking_search_debounce_time'
wp option delete 'beeking_search_show_price'
wp option delete 'beeking_search_show_category'
wp option delete 'beeking_search_show_brand'
wp option delete 'beeking_search_advanced_filters'
wp option delete 'beeking_search_enable_price_filter'
wp option delete 'beeking_search_enable_category_filter'
wp option delete 'beeking_search_enable_tags_filter'
wp option delete 'beeking_search_enable_brand_filter'
wp option delete 'beeking_search_enable_availability_filter'
wp option delete 'beeking_search_top_offset'
wp option delete 'beeking_search_button_bg_color'
wp option delete 'beeking_search_text_color'
wp option delete 'beeking_search_debug'
wp option delete 'beeking_search_placeholder_text'
wp option delete 'beeking_search_related_heading'
wp option delete 'beeking_api_key_valid'
wp option delete 'beeking_search_floating_enabled'
wp option delete 'beeking_search_replace_enabled'
wp option delete 'beeking_search_mobile_fullscreen'
wp option delete 'beeking_block_mobile_fullscreen'

# Delete Transients
wp transient delete 'beeking_currency_symbol'
wp transient delete 'beeking_price_range'
wp transient delete 'beeking_current_sync_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
