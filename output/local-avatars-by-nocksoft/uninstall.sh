#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nstla_setting_redirectgravatar_all'
wp option delete 'nstla_setting_localavatar_default'
wp option delete 'nstla_setting_localavatar_default_custom_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nstla_setting_localavatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nstla_setting_localavatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nstla_setting_localavatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nstla_setting_localavatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nstla_setting_avatarurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nstla_setting_avatarurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nstla_setting_avatarurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nstla_setting_avatarurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nstab_setting_localavatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nstab_setting_localavatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nstab_setting_localavatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nstab_setting_localavatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nstab_setting_avatarurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nstab_setting_avatarurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nstab_setting_avatarurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nstab_setting_avatarurl'"
