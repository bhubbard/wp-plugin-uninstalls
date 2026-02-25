#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wo_license_information'
wp option delete 'wp_oauth_activation_time'
wp option delete 'wp_oauth_server_mapping_settings'
wp option delete 'wpoauth_server_private_key'
wp option delete 'wpoauth_server_public_key'
wp option delete 'wo_options'
wp option delete 'wo_license_key'
wp option delete 'wp_oauth_server_db_version'
wp option delete 'wpoauth_version'

# Clear Cron Jobs
wp cron event delete 'wpo_global_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grant_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grant_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grant_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grant_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wo_grant_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wo_grant_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wo_grant_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wo_grant_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wo_permalink_notice_snooze_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wo_permalink_notice_snooze_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wo_permalink_notice_snooze_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wo_permalink_notice_snooze_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wo_dismiss_permalink_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wo_dismiss_permalink_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wo_dismiss_permalink_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wo_dismiss_permalink_notice'"
