-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wip_incoming_settings', 'wip_incoming_fontlist');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wip_incoming_lite_notice_user_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wip_incoming_lite_notice_user_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wip_incoming_lite_notice_user_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wip_incoming_lite_notice_user_id_%';

