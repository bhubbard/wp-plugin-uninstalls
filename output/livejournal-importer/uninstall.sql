-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ljapi_username', 'ljapi_password', 'ljapi_step', 'ljapi_total', 'ljapi_count', 'ljapi_lastsync', 'ljapi_sync_item_times', 'ljapi_imported_count', 'ljapi_lastsync_posts', 'ljapi_last_sync_count', 'ljapi_post_batch', 'ljapi_usermap', 'ljapi_maxid', 'ljapi_highest_id', 'ljapi_highest_comment_id', 'ljapi_comment_batch', 'ljapi_protected_password', 'ljapi_verified');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lj_itemid', 'lj_permalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('lj_itemid', 'lj_permalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('lj_itemid', 'lj_permalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lj_itemid', 'lj_permalink');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'lj_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'lj_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'lj_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lj_%';

