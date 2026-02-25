-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kopa_editor_post_rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kopa_editor_post_rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kopa_editor_post_rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kopa_editor_post_rating_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kopa_editor_total_rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kopa_editor_total_rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kopa_editor_total_rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kopa_editor_total_rating_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kopa_user_post_rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kopa_user_post_rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kopa_user_post_rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kopa_user_post_rating_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kopa_user_total_rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kopa_user_total_rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kopa_user_total_rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kopa_user_total_rating_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kopa_user_total_all_rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kopa_user_total_all_rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kopa_user_total_all_rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kopa_user_total_all_rating_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kopa_editor_user_total_all_rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kopa_editor_user_total_all_rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kopa_editor_user_total_all_rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kopa_editor_user_total_all_rating_%';

