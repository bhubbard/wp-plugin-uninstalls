#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selfnamed_plugin_version'
wp option delete 'selfnamed_platform_access_token'
wp option delete '_selfnamed_billing_information'
wp option delete 'selfnamed_api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selfnamed_orders_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selfnamed_orders_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selfnamed_orders_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selfnamed_orders_per_page'"
