-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tabsbox_metabox_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tabsbox_metabox_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tabsbox_metabox_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tabsbox_metabox_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tabsbox_metabox_tools_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tabsbox_metabox_tools_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tabsbox_metabox_tools_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tabsbox_metabox_tools_%';

