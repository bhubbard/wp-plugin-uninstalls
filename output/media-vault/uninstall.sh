#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mgjp_mv_enabled'
wp option delete 'mgjp_mv_deactivation'
wp option delete 'mgjp_mv_version'
wp option delete 'mgjp_mv_ir'
wp option delete 'mgjp_mv_default_permission'
wp option delete 'mgjp_mv_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mgjp_mv_permission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mgjp_mv_permission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mgjp_mv_permission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mgjp_mv_permission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
