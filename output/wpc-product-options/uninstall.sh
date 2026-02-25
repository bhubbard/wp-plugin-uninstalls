#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcpo_settings'
wp option delete 'wpcpo_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcpo_%'"
wp option delete 'woocommerce_tax_display_shop'

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpo-fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpo-fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpo-fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpo-fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpo-apply-for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpo-apply-for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpo-apply-for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpo-apply-for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpo-apply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpo-apply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpo-apply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpo-apply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpo-display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpo-display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpo-display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpo-display'"
