#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'erbwp_rating_label'
wp option delete 'erbwp_submit_label'
wp option delete 'erbwp_header_success_message'
wp option delete 'erbwp_success_label'
wp option delete 'erbwp_header_fail_label'
wp option delete 'erbwp_fail_label'
wp option delete 'erbwp_modal_header_background_color'
wp option delete 'erbwp_modal_header_color'
wp option delete 'erbwp_enabled_for'
wp option delete 'erbwp_remind_rating'
wp option delete 'erbwp_header_remind_rating_label'
wp option delete 'erbwp_remind_rating_message_label'
wp option delete 'erbwp_send_email_notify_to_admin_when_new_rating'
wp option delete 'erbwp_send_email_notify_to_author_when_new_rating'
wp option delete 'erbwp_ratings_per_page'
wp option delete 'erbwp_sort_ratings_direction'
wp option delete 'erbwp_hold_for_review_comment_with_x_links'
wp option delete 'erbwp_hold_for_review_comment_with_x_links_message'
wp option delete 'erbwp_avatar_url_default'
wp option delete 'erbwp_blacklist_keyword'
wp option delete 'erbwp_hold_for_review_comment_with_blacklist_keyword_message'
wp option delete 'erbwp_header_success_label'
wp option delete 'erbwp_success_message'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Clear Cron Jobs
wp cron event delete 'erbwp_send_scheduled_email_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'average_rating'"
