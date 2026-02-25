#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'addonify_wishlist_plugin_review_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wishlist_page'"
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_all_plugin_data_on_uninstall'"
wp option delete 'udp_agent_allow_tracking'
wp option delete 'udp_agent_tracking_msg_last_shown_at'
wp option delete 'udp_installed_agents'
wp option delete 'udp_active_agent_basename'

# Delete Transients
wp transient delete 'addonify_wishlist_ask_for_review_transient'

# Clear Cron Jobs
wp cron event delete 'cc_udp_agent_send_data'
wp cron event delete 'udp_agent_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'addonify_wishlist_default_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'addonify_wishlist_default_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'addonify_wishlist_default_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'addonify_wishlist_default_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'addonify_wishlist_default_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'addonify_wishlist_default_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'addonify_wishlist_default_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'addonify_wishlist_default_default'"
