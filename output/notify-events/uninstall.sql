-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpne_event_class', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpne_event_class', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpne_event_class', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpne_event_class', '_edit_last');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpne_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpne_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpne_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpne_%';

