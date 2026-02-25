#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BadgeOS_BadgeStack_Activated'
wp option delete 'badgeos_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_singular_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_singular_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_singular_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_singular_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_plural_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_plural_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_plural_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_plural_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_show_in_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_show_in_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_show_in_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_show_in_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_trigger_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_trigger_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_trigger_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_trigger_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_achievement_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_achievement_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_achievement_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_achievement_type'"
