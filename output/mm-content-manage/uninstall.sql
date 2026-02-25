-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mm_content_manage_option', '_mm_content_manage_cap');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mm_content_manage_option', '_mm_content_manage_cap');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mm_content_manage_option', '_mm_content_manage_cap');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mm_content_manage_option', '_mm_content_manage_cap');

