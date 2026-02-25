-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_priority_tab');
DELETE FROM wp_usermeta WHERE meta_key IN ('_priority_tab');
DELETE FROM wp_termmeta WHERE meta_key IN ('_priority_tab');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_priority_tab');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom_tab_content_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom_tab_content_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom_tab_content_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom_tab_content_%';

