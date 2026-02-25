#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oikkotm_general_settings'

# Clear Cron Jobs
wp cron event delete 'auto_clock_out_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oikkotm_user_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oikkotm_user_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oikkotm_user_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oikkotm_user_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_documents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_documents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_documents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_documents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oikkotm_user_department'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oikkotm_user_department'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oikkotm_user_department'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oikkotm_user_department'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oikkotm_user_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oikkotm_user_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oikkotm_user_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oikkotm_user_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oikkotm_user_shift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oikkotm_user_shift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oikkotm_user_shift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oikkotm_user_shift'"
