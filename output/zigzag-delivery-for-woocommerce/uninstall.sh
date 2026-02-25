#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zigzag_delivery_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zigzag_delivery_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zigzag_delivery_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zigzag_delivery_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zigzag_delivery_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zigzag_delivery_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zigzag_delivery_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zigzag_delivery_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zigzag_delivery_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zigzag_delivery_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zigzag_delivery_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zigzag_delivery_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zigzag_sds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zigzag_sds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zigzag_sds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zigzag_sds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zigzag_delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zigzag_delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zigzag_delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zigzag_delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zigzag_delivery_line'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zigzag_delivery_line'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zigzag_delivery_line'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zigzag_delivery_line'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zigzag_delivery_date_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zigzag_delivery_date_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zigzag_delivery_date_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zigzag_delivery_date_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zigzag_pickup_branch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zigzag_pickup_branch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zigzag_pickup_branch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zigzag_pickup_branch'"
