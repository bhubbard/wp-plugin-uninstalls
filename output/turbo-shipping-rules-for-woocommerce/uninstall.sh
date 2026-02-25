#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'state_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'state_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'state_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'state_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_zone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_zone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_zone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_zone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'state_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'state_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'state_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'state_name'"
