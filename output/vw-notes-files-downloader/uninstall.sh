#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vw_notes_and_files_downloader_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vw_notes_and_files_downloader_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vw_notes_and_files_downloader_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vw_notes_and_files_downloader_attachment'"
