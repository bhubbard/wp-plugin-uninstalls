-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csmf_post_types_cache', 'csmf_taxonomies_cache', 'csmf_module_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'csmf_metabox_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'csmf_metabox_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'csmf_metabox_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'csmf_metabox_errors_%';

