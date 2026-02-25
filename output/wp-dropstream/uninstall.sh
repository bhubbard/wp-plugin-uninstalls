#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsc_trackingid_message'
wp option delete 'wpsc_trackingid_subject'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_shipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_shipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_shipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_shipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_provider_service_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_provider_service_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_provider_service_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_provider_service_level'"
