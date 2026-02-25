-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ilrc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ilrc_exclude_related_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('ilrc_exclude_related_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('ilrc_exclude_related_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ilrc_exclude_related_posts');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ilrc_notice_userid_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ilrc_notice_userid_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ilrc_notice_userid_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ilrc_notice_userid_%';

