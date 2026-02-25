#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcdeliverea_api_user'
wp option delete 'wcdeliverea_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deliverea_shipping_dlvr_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deliverea_shipping_dlvr_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deliverea_shipping_dlvr_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deliverea_shipping_dlvr_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deliverea_shipping_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deliverea_shipping_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deliverea_shipping_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deliverea_shipping_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deliverea_shipping_carrier_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deliverea_shipping_carrier_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deliverea_shipping_carrier_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deliverea_shipping_carrier_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deliverea_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deliverea_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deliverea_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deliverea_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deliverea_collection_dlvr_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deliverea_collection_dlvr_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deliverea_collection_dlvr_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deliverea_collection_dlvr_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deliverea_collection_carrier_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deliverea_collection_carrier_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deliverea_collection_carrier_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deliverea_collection_carrier_ref'"
