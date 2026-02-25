#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plgnoptmzr_original_menu'
wp option delete 'plgnoptmzr_topbar_menu'
wp option delete 'plgnoptmzr_new_posts'
wp option delete 'po_db_updated-v1.2'
wp option delete 'po_admin_get_menu'
wp option delete 'po_should_alphabetize_menu'
wp option delete 'po_total_time'
wp option delete 'po_admin_menu_list'
wp option delete 'just-activated'
wp option delete 'po-just-activated'
wp option delete 'active_plugins_on_menu_save'
wp option delete 'po_db_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'wc_count_comments'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'premium_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'premium_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'premium_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'premium_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frontend'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frontend'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frontend'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frontend'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turned_off'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turned_off'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turned_off'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turned_off'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'completed_overview_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'completed_overview_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'completed_overview_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'completed_overview_tabs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sospo_filter_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sospo_filter_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sospo_filter_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sospo_filter_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filter_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filter_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filter_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filter_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugins_to_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugins_to_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugins_to_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugins_to_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'belongs_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'belongs_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'belongs_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'belongs_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'endpoints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'endpoints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'endpoints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'endpoints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dict_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dict_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dict_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dict_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'statusChanged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'statusChanged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'statusChanged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'statusChanged'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'group_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'group_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'group_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'group_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'groups_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'groups_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'groups_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'groups_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'belongsTo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'belongsTo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'belongsTo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'belongsTo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
