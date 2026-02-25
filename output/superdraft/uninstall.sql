-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('superdraft_settings', 'superdraft_api_keys', 'superdraft_custom_models', 'superdraft_bulk_process_data', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_superdraft_image_prompt', '_superdraft_original_image_id', '_superdraft_image_model', '_superdraft_log_id', 'superdraft_writing_tips');
DELETE FROM wp_usermeta WHERE meta_key IN ('_superdraft_image_prompt', '_superdraft_original_image_id', '_superdraft_image_model', '_superdraft_log_id', 'superdraft_writing_tips');
DELETE FROM wp_termmeta WHERE meta_key IN ('_superdraft_image_prompt', '_superdraft_original_image_id', '_superdraft_image_model', '_superdraft_log_id', 'superdraft_writing_tips');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_superdraft_image_prompt', '_superdraft_original_image_id', '_superdraft_image_model', '_superdraft_log_id', 'superdraft_writing_tips');

