#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smcoex_myw_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smcoex_myw_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smcoex_myw_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smcoex_myw_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smcoex_myw_expiry_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smcoex_myw_expiry_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smcoex_myw_expiry_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smcoex_myw_expiry_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smcoex_myw_expiry_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smcoex_myw_expiry_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smcoex_myw_expiry_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smcoex_myw_expiry_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smcoex_myw_expiry_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smcoex_myw_expiry_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smcoex_myw_expiry_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smcoex_myw_expiry_redirect'"
