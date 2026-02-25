-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_plx_portal_web_content_replacements');
DELETE FROM wp_usermeta WHERE meta_key IN ('_plx_portal_web_content_replacements');
DELETE FROM wp_termmeta WHERE meta_key IN ('_plx_portal_web_content_replacements');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_plx_portal_web_content_replacements');

