#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EWD_UPCP_Theme_Featured_Products_Type'
wp option delete 'EWD_UPCP_Theme_Featured_Products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonialName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonialName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonialName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonialName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonialCompany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonialCompany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonialCompany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonialCompany'"
