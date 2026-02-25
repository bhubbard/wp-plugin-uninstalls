#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfvsw_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfvsw_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfvsw_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfvsw_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfvsw_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfvsw_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfvsw_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfvsw_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cfvsw_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cfvsw_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cfvsw_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cfvsw_%'"
