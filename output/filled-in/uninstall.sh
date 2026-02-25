#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filled_in'
wp option delete 'filled_in_ajax'
wp option delete 'filled_in_templates'
wp option delete 'filled_in_notice'
wp option delete 'filled_in_css'
wp option delete 'filled_in_cron_delete_failed'
wp option delete 'filled_in_smtp_host'
wp option delete 'filled_in_smtp_port'
wp option delete 'filled_in_smtp_ssl'
wp option delete 'filled_in_smtp_username'
wp option delete 'filled_in_smtp_password'
wp option delete 'filled_in_attachments'
wp option delete 'filled_in_uploads'
wp option delete 'filled_in_cookies'
wp option delete 'filled_in_recent_error'
wp option delete 'filled_in_recent_error_data'
wp option delete 'filled_in_notifications'
wp option delete 'filled_in_version'
wp option delete 'filled_in_cron_delete_failed_last_run'

# Clear Cron Jobs
wp cron event delete 'filled_in_cron_delete_failed_sumbmitions_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ug_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ug_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ug_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ug_per_page'"
