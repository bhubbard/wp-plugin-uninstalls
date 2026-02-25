#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safetemp_restricted_actions'
wp option delete 'safetemp_expiration_behavior'
wp option delete 'safetemp_log_only_mode'
wp option delete 'safetemp_email_notify_actor'
wp option delete 'safetemp_notification_emails'
wp option delete 'safetemp_remove_data_on_uninstall'
wp option delete 'safetemp_blocked_action_message'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_safetemp_pwd_%' OR option_name LIKE '_site_transient_safetemp_pwd_%'"

# Clear Cron Jobs
wp cron event delete 'safetemp_housekeeping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_safetemp_temporary_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_safetemp_temporary_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_safetemp_temporary_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_safetemp_temporary_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_safetemp_expires_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_safetemp_expires_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_safetemp_expires_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_safetemp_expires_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_safetemp_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_safetemp_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_safetemp_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_safetemp_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_safetemp_created_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_safetemp_created_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_safetemp_created_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_safetemp_created_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_safetemp_allowed_caps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_safetemp_allowed_caps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_safetemp_allowed_caps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_safetemp_allowed_caps'"
