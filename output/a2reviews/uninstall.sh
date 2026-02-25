#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a2reviews_options'
wp option delete 'a2reviews_access_token'
wp option delete 'a2reviews_auth_code'
wp option delete 'a2reviews_settings'
wp option delete 'a2reviews_client_settings'
wp option delete 'a2reviews_client_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a2_meta_avg_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a2_meta_avg_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a2_meta_avg_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a2_meta_avg_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a2_meta_total_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a2_meta_total_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a2_meta_total_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a2_meta_total_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a2_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a2_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a2_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a2_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a2_meta_total_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a2_meta_total_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a2_meta_total_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a2_meta_total_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a2_meta_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a2_meta_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a2_meta_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a2_meta_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
