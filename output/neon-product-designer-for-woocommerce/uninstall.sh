#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'npd-general-options'
wp option delete 'npd_clean_promo_stats'
wp option delete 'npd-fonts'
wp option delete 'woocommerce_currency_pos'
wp option delete 'kali-data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd_clean_promo_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd_clean_promo_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd_clean_promo_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd_clean_promo_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd_clean_promo_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd_clean_promo_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd_clean_promo_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd_clean_promo_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd-metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd-metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd-metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd-metas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variation_minimum_allowed_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variation_minimum_allowed_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variation_minimum_allowed_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variation_minimum_allowed_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_allowed_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_allowed_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_allowed_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_allowed_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variation_maximum_allowed_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variation_maximum_allowed_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variation_maximum_allowed_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variation_maximum_allowed_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_allowed_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_allowed_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_allowed_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_allowed_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd-colors-palette-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd-colors-palette-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd-colors-palette-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd-colors-palette-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd-config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd-config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd-config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd-config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd-scenes-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd-scenes-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd-scenes-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd-scenes-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd_saved_designs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd_saved_designs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd_saved_designs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd_saved_designs'"
