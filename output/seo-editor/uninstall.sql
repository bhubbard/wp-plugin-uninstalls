-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpseo_taxonomy_meta', 'seo_editor_taxonomy_meta');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_seo_editor_reviewed', '_seo_editor_notes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_seo_editor_reviewed', '_seo_editor_notes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_seo_editor_reviewed', '_seo_editor_notes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_seo_editor_reviewed', '_seo_editor_notes');

