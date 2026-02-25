#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_show_shipment_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_show_shipment_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_show_shipment_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_show_shipment_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipment_date_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipment_date_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipment_date_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipment_date_%'"
