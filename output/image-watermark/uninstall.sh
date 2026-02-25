#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_watermark_options'
wp option delete 'image_watermark_version'
wp option delete 'image_watermark_activation_date'
wp option delete 'df_watermark_installed'
wp option delete 'version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iw_backup_watermark_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iw_backup_watermark_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iw_backup_watermark_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iw_backup_watermark_id'"
