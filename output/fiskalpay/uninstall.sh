#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_fiskalpay_gateway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_measurement_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_measurement_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_measurement_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_measurement_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpm_gtin_code'"
