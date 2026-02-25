#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asm_global_settings'
wp option delete 'asm_version'
wp option delete 'asm_remove_data_on_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asm_header_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asm_header_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asm_header_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asm_header_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asm_body_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asm_body_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asm_body_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asm_body_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asm_footer_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asm_footer_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asm_footer_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asm_footer_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
