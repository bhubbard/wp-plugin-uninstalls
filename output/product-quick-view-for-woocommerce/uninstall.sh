#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_quick_view_settings'

# Delete Transients
wp transient delete '_product_quick_view_for_woocommerce_welcome_screen_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_checkbox'"
