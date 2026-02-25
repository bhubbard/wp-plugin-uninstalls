-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image-credits-nofollow_pages', 'image-credits-nofollow_sep', 'image-credits-nofollow_before', 'image-credits-nofollow_after', 'image-credits-nofollow_display');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_source_name', '_wp_attachment_source_url', '_wp_attachment_source_dofollow');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_source_name', '_wp_attachment_source_url', '_wp_attachment_source_dofollow');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_source_name', '_wp_attachment_source_url', '_wp_attachment_source_dofollow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_source_name', '_wp_attachment_source_url', '_wp_attachment_source_dofollow');

