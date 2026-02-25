#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'real_archive_page_styles'
wp option delete 'real_archive_page_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_face_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_face_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_face_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_face_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_related_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_related_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_related_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_related_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_related_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_related_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_related_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_related_pages'"
