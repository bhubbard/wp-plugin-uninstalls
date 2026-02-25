-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tag_page_as_terms_of_use');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tag_page_as_terms_of_use');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tag_page_as_terms_of_use');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tag_page_as_terms_of_use');

