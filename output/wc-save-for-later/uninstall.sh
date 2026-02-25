#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woosl_settings'
wp option delete 'woosl_localization'
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosl_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosl_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosl_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosl_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosl_products'"
