#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'action_scheduler_lock_async-request-runner'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-start-date'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'airwpsync_deactivated_notice_id'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'count_deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'count_deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'count_deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'count_deleted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'count_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'count_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'count_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'count_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latest_log_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latest_log_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latest_log_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latest_log_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'table_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'table_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'table_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'table_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'run'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'run'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'run'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'run'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_sync_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_sync_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_sync_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_sync_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_air_wp_sync_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_air_wp_sync_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_air_wp_sync_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_air_wp_sync_hash'"
