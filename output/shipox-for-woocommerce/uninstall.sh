#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wing_service_config'
wp option delete 'wing_merchant_address'
wp option delete 'wing_merchant_config'
wp option delete 'wing_marketplace_settings'
wp option delete 'shipox_version'
wp option delete 'wing_order_config'
wp option delete '_wcfmmp_shipox_settings'

# Clear Cron Jobs
wp cron event delete 'crawl_every_n_minutes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wing_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wing_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wing_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wing_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wing_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wing_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wing_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wing_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_shipox_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_shipox_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_shipox_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_shipox_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
