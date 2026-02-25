-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sodathemes_typw_post_types', 'sodathemes_typw_taxonomies', 'sodathemes_typw_user_check', 'sodathemes_typw_user_role', 'typw_do_activation_redirect', 'tax_meta_migrated');
DELETE FROM wp_options WHERE option_name LIKE 'tax_meta_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rnaby_typw_meta_value_key', 'rnaby_typw_meta_tax_youtube_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rnaby_typw_meta_value_key', 'rnaby_typw_meta_tax_youtube_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rnaby_typw_meta_value_key', 'rnaby_typw_meta_tax_youtube_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rnaby_typw_meta_value_key', 'rnaby_typw_meta_tax_youtube_url');

