#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'miga_shopconnect_storefront_token'
wp option delete 'miga_shopconnect_shop_url'
wp option delete 'miga_shopconnect_prefetch'
wp option delete 'miga_shopconnect_language'
wp option delete 'miga_shopconnect_country'
wp option delete 'miga_shopconnect_hide_side_card'
wp option delete 'miga_shopconnect_show_side_card'
wp option delete 'miga_shopconnect_close_accordion'
wp option delete 'miga_shopconnect_show_recommendations'
wp option delete 'miga_shopconnect_recommendations_meta'
wp option delete 'miga_shopconnect_recommendations_meta_len'
wp option delete 'miga_shopconnect_recommendations_amount'
wp option delete 'miga_shopconnect_recommendations_layout'
wp option delete 'miga_shopconnect_store_button_text'
wp option delete 'miga_shopconnect_metafields_json'
wp option delete 'miga_shopconnect_storefront_sync'
wp option delete 'miga_shopconnect_policy_text'
wp option delete 'miga_shopconnect_permalink_products'
wp option delete 'miga_shopconnect_permalink_collections'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_shopconnect_%' OR option_name LIKE '_site_transient_shopconnect_%'"

# Clear Cron Jobs
wp cron event delete 'miga_shopconnect_syncProducts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout_type'"
