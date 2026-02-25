#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'perflab_modern_image_format'
wp option delete 'webp_uploads_use_picture_element'
wp option delete 'perflab_generate_webp_and_jpeg'
wp option delete 'perflab_generate_all_fallback_sizes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sources'"
