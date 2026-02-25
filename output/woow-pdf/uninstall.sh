#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woow_pdf_display_settings_compress'
wp option delete 'woow_pdf_display_settings_watermark'
wp option delete 'woow_pdf_display_general_settings'
wp option delete 'woow_pdf_display_settings_format_watermark'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
