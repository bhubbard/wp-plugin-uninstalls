#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview_changeset_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview_changeset_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview_changeset_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview_changeset_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_time'"
