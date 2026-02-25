#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'banner_position'
wp option delete 'banner_type'
wp option delete 'wisecampaign_plugin_enabled'
wp option delete 'wisecampaign_selected_banner'
wp option delete 'wc-stockbar-status'
wp option delete 'wc-stockbar-setting'
wp option delete 'activeWiseStockbarId'
wp option delete 'wisecampaign_dc_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wisecart_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wisecart_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wisecart_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wisecart_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wisecart_success_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wisecart_success_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wisecart_success_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wisecart_success_viewed'"
