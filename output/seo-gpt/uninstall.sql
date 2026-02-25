-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgpt_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seo_gpt_keyword', 'seo_gpt_brand');
DELETE FROM wp_usermeta WHERE meta_key IN ('seo_gpt_keyword', 'seo_gpt_brand');
DELETE FROM wp_termmeta WHERE meta_key IN ('seo_gpt_keyword', 'seo_gpt_brand');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seo_gpt_keyword', 'seo_gpt_brand');

