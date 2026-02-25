#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autuskey_jlm_metal_types'
wp option delete 'autuskey_jlm_purity_options'
wp option delete 'autuskey_jlm_making_charge_type'
wp option delete 'autuskey_jlm_making_charge_value'

# Delete Transients
wp transient delete 'autuskey_jlm_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_jewelry_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_jewelry_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_jewelry_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_jewelry_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_making_charge_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_making_charge_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_making_charge_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_making_charge_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_making_charge_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_making_charge_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_making_charge_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_making_charge_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_metal_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_metal_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_metal_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_metal_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_purity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_purity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_purity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_purity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_gross_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_gross_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_gross_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_gross_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_stone_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_stone_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_stone_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_stone_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_net_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_net_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_net_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_net_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_has_stone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_has_stone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_has_stone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_has_stone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_stone_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_stone_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_stone_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_stone_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_is_certified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_is_certified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_is_certified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_is_certified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jewelry_certificate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jewelry_certificate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jewelry_certificate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jewelry_certificate'"
