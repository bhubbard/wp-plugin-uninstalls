#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcp_pro_features'
wp option delete 'wcp_debug_mode'
wp option delete 'wcp_disable_all'
wp option delete 'wcp_ruleset_order'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'wcp_updated_200'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcp_%'"
wp option delete 'wcp_updated_214'

# Delete Transients
wp transient delete 'wcp_name_address_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcp_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcp_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcp_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcp_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcp_operator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcp_operator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcp_operator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcp_operator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcp_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcp_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcp_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcp_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcp_actions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcp_actions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcp_actions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcp_actions'"
