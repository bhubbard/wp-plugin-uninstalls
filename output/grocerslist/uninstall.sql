-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grocerslist_migration_last_started_at', 'grocerslist_migration_last_completed_at', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('grocers_list_post_gated', 'grocers_list_recipe_card_gated', 'grocers_list_page_gated');
DELETE FROM wp_usermeta WHERE meta_key IN ('grocers_list_post_gated', 'grocers_list_recipe_card_gated', 'grocers_list_page_gated');
DELETE FROM wp_termmeta WHERE meta_key IN ('grocers_list_post_gated', 'grocers_list_recipe_card_gated', 'grocers_list_page_gated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('grocers_list_post_gated', 'grocers_list_recipe_card_gated', 'grocers_list_page_gated');

