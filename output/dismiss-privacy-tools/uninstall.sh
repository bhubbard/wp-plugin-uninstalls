#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_comments_cookies_opt_in'
wp option delete '_wp_privacy_text_change_check'
wp option delete '_wp_suggested_policy_text_has_changed'

# Clear Cron Jobs
wp cron event delete 'wp_privacy_delete_old_export_files'

