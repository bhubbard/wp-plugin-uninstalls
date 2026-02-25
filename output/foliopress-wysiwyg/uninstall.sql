-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_default_post_edit_rows', 'fp_wysiwyg_version', 'default_post_edit_rows', 'foliopress_wysiwyg_seo_images_gone');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_impact_template', 'wysiwyg', '_thumbnail_id', '_use_impact');
DELETE FROM wp_usermeta WHERE meta_key IN ('_impact_template', 'wysiwyg', '_thumbnail_id', '_use_impact');
DELETE FROM wp_termmeta WHERE meta_key IN ('_impact_template', 'wysiwyg', '_thumbnail_id', '_use_impact');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_impact_template', 'wysiwyg', '_thumbnail_id', '_use_impact');

