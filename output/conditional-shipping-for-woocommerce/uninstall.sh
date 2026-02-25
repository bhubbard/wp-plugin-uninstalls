#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcs_debug_mode'
wp option delete 'wcs_disable_all'
wp option delete 'wcs_ruleset_order'
wp option delete 'wcs_pro_features'
wp option delete 'wcs_ruleset_fields'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wcs_updated_340'
wp option delete 'wcs_updated_3401'
wp option delete 'wcs_updated_200'
wp option delete 'wcs_conditions'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_operator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_operator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_operator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_operator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_actions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_actions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_actions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_actions'"
