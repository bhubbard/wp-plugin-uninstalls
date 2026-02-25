-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simple_seo_meta_title', '_simple_seo_meta_description', '_simple_seo_meta_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simple_seo_meta_title', '_simple_seo_meta_description', '_simple_seo_meta_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simple_seo_meta_title', '_simple_seo_meta_description', '_simple_seo_meta_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simple_seo_meta_title', '_simple_seo_meta_description', '_simple_seo_meta_keywords');

