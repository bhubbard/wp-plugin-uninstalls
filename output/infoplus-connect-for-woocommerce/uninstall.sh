#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_infoplus_order_source_id'
wp option delete 'wc_infoplus_wc_api_key_id'
wp option delete 'wc_infoplus_url'
wp option delete 'wc_infoplus_api_key'
wp option delete 'wc_infoplus_order_update_auto_complete'
wp option delete 'wc_infoplus_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_force_ssl_checkout'

# Delete Transients
wp transient delete 'wc_infoplus_configured'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_infoplus_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_infoplus_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_infoplus_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_infoplus_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_infoplus_fulfillment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_infoplus_fulfillment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_infoplus_fulfillment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_infoplus_fulfillment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_infoplus_orders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_infoplus_orders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_infoplus_orders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_infoplus_orders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_api_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_api_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_api_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_api_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages'"
