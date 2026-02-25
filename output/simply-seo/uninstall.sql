-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simply_seo_settings', 'simply_seo_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simply_seo_title', '_simply_seo_description', '_simply_seo_keywords', '_simply_seo_social_image', '_simply_seo_image', '_simply_seo_noindex', '_simply_seo_nofollow', '_simply_seo_canonical');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simply_seo_title', '_simply_seo_description', '_simply_seo_keywords', '_simply_seo_social_image', '_simply_seo_image', '_simply_seo_noindex', '_simply_seo_nofollow', '_simply_seo_canonical');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simply_seo_title', '_simply_seo_description', '_simply_seo_keywords', '_simply_seo_social_image', '_simply_seo_image', '_simply_seo_noindex', '_simply_seo_nofollow', '_simply_seo_canonical');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simply_seo_title', '_simply_seo_description', '_simply_seo_keywords', '_simply_seo_social_image', '_simply_seo_image', '_simply_seo_noindex', '_simply_seo_nofollow', '_simply_seo_canonical');

