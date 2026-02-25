#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mo-option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mo-option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mo-option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mo-option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mo-option-roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mo-option-roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mo-option-roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mo-option-roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mo-option-redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mo-option-redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mo-option-redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mo-option-redirect'"
