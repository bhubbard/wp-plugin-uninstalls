#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fmpqb_email_templates'
wp option delete 'fmpqb_email_settings'
wp option delete 'fmpqb_saved_quizzes'
wp option delete 'fmpqb_registration_form_settings'
wp option delete 'fmpqb_roles_stats_snapshot'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'role_created_%'"
wp option delete 'fmpqb_user_supported_plugin'
wp option delete 'fmpqb_users_columns'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'registered_via_custom_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'registered_via_custom_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'registered_via_custom_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'registered_via_custom_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
