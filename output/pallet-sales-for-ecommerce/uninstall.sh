#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pallsafo_migration_done'
wp option delete 'pallsafo_default_currency_symbol'
wp option delete 'pallsafo_calculator_enabled'
wp option delete 'pallsafo_weight_calculation_enabled'
wp option delete 'pallsafo_display_stones_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pallsafo_sold_by_pallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pallsafo_sold_by_pallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pallsafo_sold_by_pallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pallsafo_sold_by_pallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pallsafo_pallet_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pallsafo_pallet_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pallsafo_pallet_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pallsafo_pallet_area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pallsafo_pallet_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pallsafo_pallet_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pallsafo_pallet_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pallsafo_pallet_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pallsafo_stone_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pallsafo_stone_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pallsafo_stone_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pallsafo_stone_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pallsafo_stones_per_sqm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pallsafo_stones_per_sqm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pallsafo_stones_per_sqm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pallsafo_stones_per_sqm'"
