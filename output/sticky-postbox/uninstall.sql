-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sticky_postbox_sticky_postboxes_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sticky_postbox_sticky_postboxes_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sticky_postbox_sticky_postboxes_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sticky_postbox_sticky_postboxes_%';

