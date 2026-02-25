#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redx_tracking_plugin_activation_redirect'
wp option delete 'redex_tracking_enabled'
wp option delete 'redex_tracking_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcel_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcel_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcel_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcel_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redx_tracking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redx_tracking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redx_tracking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redx_tracking_id'"
