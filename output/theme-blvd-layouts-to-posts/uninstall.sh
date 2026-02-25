#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb-nag-layouts-to-posts-no-framework'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb-nag-layouts-to-posts-no-framework'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb-nag-layouts-to-posts-no-framework'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb-nag-layouts-to-posts-no-framework'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tb_custom_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tb_custom_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tb_custom_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tb_custom_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tb_builder_elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tb_builder_elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tb_builder_elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tb_builder_elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings'"
