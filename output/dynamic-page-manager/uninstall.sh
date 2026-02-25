#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rdynamic_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rdynamic_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rdynamic_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rdynamic_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ast-title-bar-display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ast-title-bar-display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ast-title-bar-display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ast-title-bar-display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rdynamic_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rdynamic_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rdynamic_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rdynamic_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dynapama_layout_preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dynapama_layout_preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dynapama_layout_preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dynapama_layout_preference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'child_page_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'child_page_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'child_page_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'child_page_of'"
