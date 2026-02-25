#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'old_comment_cleaner_days_old'
wp option delete 'old_comment_cleaner_delete_email'
wp option delete 'old_comment_cleaner_delete_name'
wp option delete 'old_comment_cleaner_delete_url'
wp option delete 'old_comment_cleaner_confirm_delete'

# Delete Transients
wp transient delete 'old_comment_cleaner_delete_old_comments_now'

# Clear Cron Jobs
wp cron event delete 'old_comment_cleaner_delete_old_comments_now'
wp cron event delete 'old_comment_cleaner_delete_old_comments'

