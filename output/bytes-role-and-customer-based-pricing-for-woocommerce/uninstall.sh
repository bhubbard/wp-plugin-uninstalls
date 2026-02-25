#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'bytes_role_operation_msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bytes_role_based_pricing_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bytes_role_based_pricing_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bytes_role_based_pricing_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bytes_role_based_pricing_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bytes__customer_based_pricing_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bytes__customer_based_pricing_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bytes__customer_based_pricing_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bytes__customer_based_pricing_rules'"
