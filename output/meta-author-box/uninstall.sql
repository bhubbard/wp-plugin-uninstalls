-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_author_name', '_custom_author_bio', '_custom_author_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_author_name', '_custom_author_bio', '_custom_author_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_author_name', '_custom_author_bio', '_custom_author_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_author_name', '_custom_author_bio', '_custom_author_image');

