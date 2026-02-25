-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beedia_qiniu_access_key', 'beedia_qiniu_secret_key', 'beedia_qiniu_bucket_name', 'beedia_qiniu_switch', 'beedia_qiniu_host', 'beedia_when_delete_post_image_rule');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qiniu');
DELETE FROM wp_usermeta WHERE meta_key IN ('qiniu');
DELETE FROM wp_termmeta WHERE meta_key IN ('qiniu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qiniu');

