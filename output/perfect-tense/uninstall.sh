#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptense_jobs'
wp option delete 'perfect_tense_api_key'
wp option delete 'ptense_api_key_valid'
wp option delete 'perfect_tense_app_key'
wp option delete 'ptense_comment_mark_spam'
wp option delete 'ptense_comment_min_score'
wp option delete 'ptense_post_check_score'
wp option delete 'ptense_save_post'
wp option delete 'ptense_save_post_draft_score'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ptense_job_%'"
wp option delete 'ptense_save_post_correct_score'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'ptense_hide_notice'

# Clear Cron Jobs
wp cron event delete 'ptense_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptense_score_last_checked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptense_score_last_checked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptense_score_last_checked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptense_score_last_checked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptense_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptense_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptense_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptense_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptense_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptense_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptense_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptense_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptense_post_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptense_post_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptense_post_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptense_post_score'"
