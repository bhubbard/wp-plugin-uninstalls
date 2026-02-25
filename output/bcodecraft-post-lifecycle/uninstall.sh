#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bclc_last_audit_run'
wp option delete 'bclc_last_expiration_check'
wp option delete 'bclc_needs_reschedule'
wp option delete 'bclc_settings'
wp option delete 'bclc_activated_at'
wp option delete 'bclc_version'

# Clear Cron Jobs
wp cron event delete 'bclc_check_expirations'
wp cron event delete 'bclc_run_audit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bclc_expiration_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bclc_expiration_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bclc_expiration_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bclc_expiration_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bclc_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bclc_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bclc_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bclc_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bclc_expired_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bclc_expired_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bclc_expired_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bclc_expired_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bclc_expired_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bclc_expired_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bclc_expired_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bclc_expired_by'"
