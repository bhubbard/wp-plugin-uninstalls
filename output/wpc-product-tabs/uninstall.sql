-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woost_tabs', 'wpclever_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woost_tabs', 'woost_overwrite');
DELETE FROM wp_usermeta WHERE meta_key IN ('woost_tabs', 'woost_overwrite');
DELETE FROM wp_termmeta WHERE meta_key IN ('woost_tabs', 'woost_overwrite');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woost_tabs', 'woost_overwrite');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woost_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woost_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woost_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woost_%';

