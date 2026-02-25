-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('andw_migration_pending', 'andw_requesters', 'andw_workers', 'andw_migrated_version', 'of_worklog_target_user_ids', 'of_worklog_target_post_types', 'of_worklog_min_role', 'andw_worklog_mode', 'andw_strategy_logged');
DELETE FROM wp_options WHERE option_name LIKE 'andw_recent_create_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_andw_work_title', '_andw_requester', '_andw_worker', '_andw_target_label', '_andw_work_content', '_andw_status', '_andw_work_date', '_andw_target_type', '_andw_target_id', '_andw_bound_post_id', '_andw_pending_cpt_creation', '_andw_last_sync_hash', '_andw_bound_cpt_ids', '_andw_bound_cpt_id', '_andw_migrated_to_post_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_andw_work_title', '_andw_requester', '_andw_worker', '_andw_target_label', '_andw_work_content', '_andw_status', '_andw_work_date', '_andw_target_type', '_andw_target_id', '_andw_bound_post_id', '_andw_pending_cpt_creation', '_andw_last_sync_hash', '_andw_bound_cpt_ids', '_andw_bound_cpt_id', '_andw_migrated_to_post_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_andw_work_title', '_andw_requester', '_andw_worker', '_andw_target_label', '_andw_work_content', '_andw_status', '_andw_work_date', '_andw_target_type', '_andw_target_id', '_andw_bound_post_id', '_andw_pending_cpt_creation', '_andw_last_sync_hash', '_andw_bound_cpt_ids', '_andw_bound_cpt_id', '_andw_migrated_to_post_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_andw_work_title', '_andw_requester', '_andw_worker', '_andw_target_label', '_andw_work_content', '_andw_status', '_andw_work_date', '_andw_target_type', '_andw_target_id', '_andw_bound_post_id', '_andw_pending_cpt_creation', '_andw_last_sync_hash', '_andw_bound_cpt_ids', '_andw_bound_cpt_id', '_andw_migrated_to_post_fields');

