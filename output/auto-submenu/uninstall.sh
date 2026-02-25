#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nav_menu_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asm-unfold'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asm-unfold'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asm-unfold'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asm-unfold'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asm-orderby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asm-orderby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asm-orderby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asm-orderby'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asm-order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asm-order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asm-order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asm-order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asm-item-depth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asm-item-depth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asm-item-depth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asm-item-depth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asm-item-titles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asm-item-titles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asm-item-titles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asm-item-titles'"
