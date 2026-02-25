-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acfe_dynamic_block_types', 'acfe_dynamic_options_pages', 'acfe_dynamic_post_types', 'acfe_dynamic_taxonomies', 'acfe');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acf_changed', '_thumbnail_id', '_wp_old_slug', 'acf');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acf_changed', '_thumbnail_id', '_wp_old_slug', 'acf');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acf_changed', '_thumbnail_id', '_wp_old_slug', 'acf');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acf_changed', '_thumbnail_id', '_wp_old_slug', 'acf');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

