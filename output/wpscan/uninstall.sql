-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('protect_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('protect_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('protect_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('protect_notice_dismissed');

