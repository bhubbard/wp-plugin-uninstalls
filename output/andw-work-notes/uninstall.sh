#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'andw_migration_pending'
wp option delete 'andw_requesters'
wp option delete 'andw_workers'
wp option delete 'andw_migrated_version'
wp option delete 'of_worklog_target_user_ids'
wp option delete 'of_worklog_target_post_types'
wp option delete 'of_worklog_min_role'
wp option delete 'andw_worklog_mode'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_andw_recent_create_%' OR option_name LIKE '_site_transient_andw_recent_create_%'"
wp transient delete 'andw_strategy_logged'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_work_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_work_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_work_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_work_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_requester'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_requester'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_requester'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_requester'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_worker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_worker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_worker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_worker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_target_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_target_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_target_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_target_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_work_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_work_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_work_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_work_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_work_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_work_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_work_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_work_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_target_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_target_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_target_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_target_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_target_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_target_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_target_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_target_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_bound_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_bound_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_bound_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_bound_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_pending_cpt_creation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_pending_cpt_creation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_pending_cpt_creation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_pending_cpt_creation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_last_sync_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_last_sync_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_last_sync_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_last_sync_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_bound_cpt_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_bound_cpt_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_bound_cpt_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_bound_cpt_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_bound_cpt_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_bound_cpt_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_bound_cpt_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_bound_cpt_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_andw_migrated_to_post_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_andw_migrated_to_post_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_andw_migrated_to_post_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_andw_migrated_to_post_fields'"
