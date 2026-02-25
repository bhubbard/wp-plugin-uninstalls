-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('old_post_notice_version', 'old_post_notice_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_old_post_notice', '_old_post_notice_behavior');
DELETE FROM wp_usermeta WHERE meta_key IN ('_old_post_notice', '_old_post_notice_behavior');
DELETE FROM wp_termmeta WHERE meta_key IN ('_old_post_notice', '_old_post_notice_behavior');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_old_post_notice', '_old_post_notice_behavior');

