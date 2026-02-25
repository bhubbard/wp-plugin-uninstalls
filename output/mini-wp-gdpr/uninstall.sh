#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'pwpl_this_ip_address'
wp transient delete 'pwpl_my_ip_addresses'
wp transient delete 'pwpl_this_geo_data'
wp transient delete 'pwpl_this_geo_data_last_checked'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
