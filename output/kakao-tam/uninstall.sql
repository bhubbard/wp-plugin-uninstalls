-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tmp_kakao_app_user_id', 'kakao_app_user_id', 'tmp_kakao_app_user_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('tmp_kakao_app_user_id', 'kakao_app_user_id', 'tmp_kakao_app_user_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('tmp_kakao_app_user_id', 'kakao_app_user_id', 'tmp_kakao_app_user_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tmp_kakao_app_user_id', 'kakao_app_user_id', 'tmp_kakao_app_user_hash');

