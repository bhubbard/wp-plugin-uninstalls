-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_notice_for_logged_in_only', '_notice_color', 'pippin_notice_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_notice_for_logged_in_only', '_notice_color', 'pippin_notice_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_notice_for_logged_in_only', '_notice_color', 'pippin_notice_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_notice_for_logged_in_only', '_notice_color', 'pippin_notice_ids');

