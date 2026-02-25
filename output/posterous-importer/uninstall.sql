-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posterous_import', 'posterous_hostname', 'posterous_username', 'posterous_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_post_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_post_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_post_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_post_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_media';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_media';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_media';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_media';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachment';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachment';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachment';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachment';

