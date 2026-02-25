#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbps_connection_status'
wp option delete 'wbps_webhook_url'
wp option delete 'wbps_woocommerce_keys'
wp option delete 'wbps_sheet_props'
wp option delete 'wbps_authcode'
wp option delete 'wcgs_syncback_settings'
wp option delete 'wcgs_metadata_keys'
wp option delete 'wcgs_category_tags_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbps_row_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbps_row_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbps_row_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbps_row_id'"
