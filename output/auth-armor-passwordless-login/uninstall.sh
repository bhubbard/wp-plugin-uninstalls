#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auth_armor_setup_wizard'
wp option delete 'auth_armor_setup_wizard_confirm'
wp option delete 'autharmor_options'
wp option delete 'autharmor_wizard_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autharmor_data_missmatch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autharmor_data_missmatch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autharmor_data_missmatch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autharmor_data_missmatch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autharmor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autharmor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autharmor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autharmor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invite_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invite_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invite_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invite_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autharmor_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autharmor_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autharmor_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autharmor_status'"
