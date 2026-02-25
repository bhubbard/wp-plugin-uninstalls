#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eaar_db_version'

# Clear Cron Jobs
wp cron event delete 'eaar_cleanup_form_file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eaar_object_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eaar_object_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eaar_object_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eaar_object_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eaar_auto_unpublished'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eaar_auto_unpublished'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eaar_auto_unpublished'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eaar_auto_unpublished'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eaar_auto_unpublished_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eaar_auto_unpublished_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eaar_auto_unpublished_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eaar_auto_unpublished_by'"
