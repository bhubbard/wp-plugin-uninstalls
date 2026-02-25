-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('s3k_seo_title', 's3k_seo_keywords', 's3k_seo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('s3k_seo_title', 's3k_seo_keywords', 's3k_seo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('s3k_seo_title', 's3k_seo_keywords', 's3k_seo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('s3k_seo_title', 's3k_seo_keywords', 's3k_seo_description');

