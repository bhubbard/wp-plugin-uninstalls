#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mm_efi_main_settings'
wp option delete 'mm_efi_color'
wp option delete 'mm_efi_font_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mm_efi_font_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mm_efi_font_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mm_efi_font_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mm_efi_font_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mm_efi_current_font'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mm_efi_current_font'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mm_efi_current_font'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mm_efi_current_font'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mm_efi_output_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mm_efi_output_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mm_efi_output_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mm_efi_output_type'"
