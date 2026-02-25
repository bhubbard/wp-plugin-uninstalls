#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rulehook_promo_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rulehook_promo_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rulehook_promo_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rulehook_promo_dismissed'"
