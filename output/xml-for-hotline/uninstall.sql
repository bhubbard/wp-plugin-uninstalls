-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xfhu_keeplogs', 'xfhu_errors', 'xfhu_settings_arr', 'xfhu_registered_feeds_arr', 'xfhu_version', 'xfhu_disable_notices', 'xfhu_enable_five_min', 'active_sitewide_plugins', 'xfhu_feed_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xfhup_removefromxml', '_xfhu_condition', '_xfhu_custom');
DELETE FROM wp_usermeta WHERE meta_key IN ('xfhup_removefromxml', '_xfhu_condition', '_xfhu_custom');
DELETE FROM wp_termmeta WHERE meta_key IN ('xfhup_removefromxml', '_xfhu_condition', '_xfhu_custom');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xfhup_removefromxml', '_xfhu_condition', '_xfhu_custom');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'deny_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'deny_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'deny_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'deny_%';

