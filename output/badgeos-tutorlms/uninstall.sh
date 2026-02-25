#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'badgeos_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_tutor_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_tutor_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_tutor_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_tutor_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_tutor_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_tutor_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_tutor_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_tutor_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_tutor_object_arg1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_tutor_object_arg1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_tutor_object_arg1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_tutor_object_arg1'"
