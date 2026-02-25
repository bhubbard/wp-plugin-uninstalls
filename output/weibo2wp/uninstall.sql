-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weibo2wp_default_setting', 'weibo2wp_auth_list');
DELETE FROM wp_options WHERE option_name LIKE 'weibo2wp_%';
DELETE FROM wp_options WHERE option_name LIKE '_weibo2wp_session_expires_%';
DELETE FROM wp_options WHERE option_name LIKE '_weibo2wp_session_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_weibo_image', '_image_image', '_weibo_id', '_weibo_name', '_comment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_weibo_image', '_image_image', '_weibo_id', '_weibo_name', '_comment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_weibo_image', '_image_image', '_weibo_id', '_weibo_name', '_comment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_weibo_image', '_image_image', '_weibo_id', '_weibo_name', '_comment_id');

