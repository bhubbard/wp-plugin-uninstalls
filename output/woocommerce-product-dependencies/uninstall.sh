#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tied_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tied_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tied_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tied_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tied_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tied_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tied_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tied_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dependency_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dependency_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dependency_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dependency_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dependency_selection_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dependency_selection_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dependency_selection_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dependency_selection_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dependency_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dependency_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dependency_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dependency_notice'"
