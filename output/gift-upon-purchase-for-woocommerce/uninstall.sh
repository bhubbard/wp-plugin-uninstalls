#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gupfw_plugin_notifications'
wp option delete 'gupfw_settings_arr'
wp option delete 'gupfw_keeplogs'
wp option delete 'active_sitewide_plugins'
wp option delete 'gupfw_registered_feeds_arr'
wp option delete 'gupfw_last_feed_id'
wp option delete 'gupfw_version'
wp option delete 'gupfw_feed_content'
wp option delete 'gupfw_hook_name_for_gift_info'
wp option delete 'gupfw_hook_name_for_gift_in_category_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gupfw_last_element_feed_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gupfw_product_gift_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gupfw_product_gift_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gupfw_product_gift_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gupfw_product_gift_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_days_of_the_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_days_of_the_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_days_of_the_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_days_of_the_week'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_days_of_the_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_days_of_the_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_days_of_the_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_days_of_the_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gupfw_stopgift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gupfw_stopgift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gupfw_stopgift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gupfw_stopgift'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_two_price_one'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_two_price_one'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_two_price_one'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_two_price_one'"
