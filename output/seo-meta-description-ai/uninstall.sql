-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_meta_description_ai_activation_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seo_meta_description_ai_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('seo_meta_description_ai_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('seo_meta_description_ai_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seo_meta_description_ai_meta_description');

