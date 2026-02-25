#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_profile_page_id_for_login'
wp option delete 'user_profile_page_id_for_show_my_profile'
wp option delete 'user_profile_page_id_for_edit_my_profile'
wp option delete 'user_profile_page_id_for_registration'
wp option delete 'user_profile_page_id_for_registration_finished'
wp option delete 'user_profile_disable_activation_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_profile_user_activation_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_profile_user_activation_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_profile_user_activation_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_profile_user_activation_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_profile_user_activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_profile_user_activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_profile_user_activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_profile_user_activation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar'"
