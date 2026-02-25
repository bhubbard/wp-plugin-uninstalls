#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_alt_import_errors'
wp option delete 'easy_alt_import_last_rows'
wp option delete 'easy_alt_import_backup'
wp option delete 'easy_alt_import_backup_date'
wp option delete 'easy_alt_import_apply_errors'
wp option delete 'easy_alt_import_undo_errors'
wp option delete 'easy_alt_import_version'

# Delete Transients
wp transient delete 'easy_alt_import_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
