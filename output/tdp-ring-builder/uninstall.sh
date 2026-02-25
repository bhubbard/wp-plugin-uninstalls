#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tdprb-access-token-val'
wp option delete 'tdprb-access-token'
wp option delete 'tdprb-access-token-data'
wp option delete 'tdprb_settings'
wp option delete 'tdprb_lab_settings'
wp option delete 'tdprb_natural_settings'
wp option delete 'tdprb_ring_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_custom_tdp_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_custom_tdp_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_custom_tdp_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_custom_tdp_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diamond_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diamond_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diamond_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diamond_sku'"
