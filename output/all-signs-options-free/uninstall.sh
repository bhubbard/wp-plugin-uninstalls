#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asowp_output_options'
wp option delete 'asowp_config_page'
wp option delete 'asowp_all_borders'
wp option delete 'asowp_all_shapes'
wp option delete 'asowp_all_fixingMethods'
wp option delete 'ASOWP_installed'
wp option delete 'ASOWP_version'
wp option delete 'woocommerce_currency_pos'
wp option delete 'asowp-manages-cliparts'
wp option delete 'asowp-manages-fonts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-asowp-metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-asowp-metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-asowp-metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-asowp-metas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asowp-configs-meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asowp-configs-meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asowp-configs-meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asowp-configs-meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asowp-templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asowp-templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asowp-templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asowp-templates'"
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
