-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lazy-number', 'lazy-number-geo', 'lazy-keywords', 'lazy-geo', 'lazy-check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lazy_seo_meta_key', 'lazy_seo_meta_key_geo', 'lazy_seo_meta_check', 'lazy_seo_meta_desc', 'lazy_seo_meta_h1');
DELETE FROM wp_usermeta WHERE meta_key IN ('lazy_seo_meta_key', 'lazy_seo_meta_key_geo', 'lazy_seo_meta_check', 'lazy_seo_meta_desc', 'lazy_seo_meta_h1');
DELETE FROM wp_termmeta WHERE meta_key IN ('lazy_seo_meta_key', 'lazy_seo_meta_key_geo', 'lazy_seo_meta_check', 'lazy_seo_meta_desc', 'lazy_seo_meta_h1');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lazy_seo_meta_key', 'lazy_seo_meta_key_geo', 'lazy_seo_meta_check', 'lazy_seo_meta_desc', 'lazy_seo_meta_h1');

