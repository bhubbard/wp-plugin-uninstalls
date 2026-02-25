-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('npn_mailnotify_category', 'npn_notified', 'npn_mailnotify');
DELETE FROM wp_usermeta WHERE meta_key IN ('npn_mailnotify_category', 'npn_notified', 'npn_mailnotify');
DELETE FROM wp_termmeta WHERE meta_key IN ('npn_mailnotify_category', 'npn_notified', 'npn_mailnotify');
DELETE FROM wp_commentmeta WHERE meta_key IN ('npn_mailnotify_category', 'npn_notified', 'npn_mailnotify');

