-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yfw_settings_agendas', 'yfw_settings_blogs', 'yfw_settings_general', 'yfw_settings_knowledge_bases', 'yfw_settings_news', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yfw_user_roles', 'yfw_user_item_roles');
DELETE FROM wp_usermeta WHERE meta_key IN ('yfw_user_roles', 'yfw_user_item_roles');
DELETE FROM wp_termmeta WHERE meta_key IN ('yfw_user_roles', 'yfw_user_item_roles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yfw_user_roles', 'yfw_user_item_roles');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_item_start_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_item_start_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_item_start_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_item_start_date';

