#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rapls_pic_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapls_pic_is_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapls_pic_is_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapls_pic_is_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapls_pic_is_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rapls_pic_source_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rapls_pic_source_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rapls_pic_source_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rapls_pic_source_pdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
