#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'repair_woocommerce_speed_options'
wp option delete 'repair_woocommerce_speed_custom_handles'

# Delete Transients
wp transient delete '_repair_woocommerce_speed_do_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_repair_woo_custom_handles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_repair_woo_custom_handles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_repair_woo_custom_handles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_repair_woo_custom_handles'"
