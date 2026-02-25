#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'waap_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_atcid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_atcid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_atcid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_atcid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anytrack_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anytrack_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anytrack_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anytrack_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfocu_primary_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfocu_primary_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfocu_primary_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfocu_primary_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfocu_upsell_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfocu_upsell_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfocu_upsell_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfocu_upsell_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anytrack_tracked_upsells'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anytrack_tracked_upsells'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anytrack_tracked_upsells'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anytrack_tracked_upsells'"
