-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tbfbuusm_bulk_manager_history');
DELETE FROM wp_options WHERE option_name LIKE 'tbfbuusm_slug_fix_plan_%';
DELETE FROM wp_options WHERE option_name LIKE 'tbfbuusm_slug_fix_progress_%';
DELETE FROM wp_options WHERE option_name LIKE 'tbfbuusm_user_gen_plan_%';
DELETE FROM wp_options WHERE option_name LIKE 'tbfbuusm_user_gen_progress_%';
DELETE FROM wp_options WHERE option_name LIKE 'tbfbuusm_user_gen_results_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tbfbuusm_avatar_url', 'tbfbuusm_gender', 'bp_latest_avatar', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('tbfbuusm_avatar_url', 'tbfbuusm_gender', 'bp_latest_avatar', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('tbfbuusm_avatar_url', 'tbfbuusm_gender', 'bp_latest_avatar', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tbfbuusm_avatar_url', 'tbfbuusm_gender', 'bp_latest_avatar', 'nickname');

