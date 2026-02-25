#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'grocerslist_migration_last_started_at'
wp transient delete 'grocerslist_migration_last_completed_at'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'grocers_list_scheduled_task'
wp cron event delete 'migration_visitor_run_async'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grocers_list_post_gated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grocers_list_post_gated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grocers_list_post_gated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grocers_list_post_gated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grocers_list_recipe_card_gated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grocers_list_recipe_card_gated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grocers_list_recipe_card_gated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grocers_list_recipe_card_gated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grocers_list_page_gated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grocers_list_page_gated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grocers_list_page_gated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grocers_list_page_gated'"
