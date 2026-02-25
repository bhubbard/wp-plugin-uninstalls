#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcbr_settings'
wp option delete 'wc_feature_woocommerce_brands_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcbr_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcbr_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcbr_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcbr_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcbr_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcbr_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcbr_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcbr_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcbr_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcbr_banner_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcbr_banner_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcbr_banner_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcbr_banner_link'"
