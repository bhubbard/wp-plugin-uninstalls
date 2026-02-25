-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_porter_website_url', 'post_porter_post_type', 'post_porter_website_post_type', 'post_porter_is_authorized', 'post_porter_export_key');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'user_avatar_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'user_avatar_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'user_avatar_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'user_avatar_%';

