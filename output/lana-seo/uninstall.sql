-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lana_seo_allowed_meta', 'lana_seo_allow_in_post_type', 'lana_seo_allow_in_taxonomy', 'lana_seo_automatic_generation_in');
DELETE FROM wp_options WHERE option_name LIKE '%_lana_seo_tags';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lana_seo_tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('lana_seo_tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('lana_seo_tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lana_seo_tags');

