-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jvh_import_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('css_class', 'css_styles', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('css_class', 'css_styles', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('css_class', 'css_styles', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('css_class', 'css_styles', '_thumbnail_id');

