#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pod_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fulfillment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fulfillment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fulfillment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fulfillment_status'"
