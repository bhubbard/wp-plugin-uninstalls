#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgai_website_id'
wp option delete 'pgai_secret_key'
wp option delete 'pgai_sync_reviews'
wp option delete 'pgai_widget_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pgai_widget_show_%'"
wp option delete 'pgai_widget_show_home'
wp option delete 'pgai_widget_show_product'
wp option delete 'pgai_widget_show_shop'
wp option delete 'pgai_widget_show_cart'
wp option delete 'pgai_widget_show_checkout'
wp option delete 'pgai_widget_show_posts'
wp option delete 'pgai_widget_show_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
