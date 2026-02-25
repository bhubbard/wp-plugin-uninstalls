-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_pmp_use_documentation', 'gs_pmp_use_details', 'rewrite_rules', 'gs_pmp_display_order', 'gs_pmp_display_asc', 'gs_pmp_plural_label', 'gs_pmp_singular_label', 'gs_pmp_index_slug', 'gs_pmp_use_excerpt', 'gs_pmp_use_thumbnails', 'gs_pmp_use_custom_fields', 'gs_pmp_use_comments', 'gs_pmp_use_trackbacks', 'gs_pmp_use_revisions', 'gs_pmp_use_taxonomies', 'gs_pmp_use_download', 'gs_pmp_use_faq', 'gs_pmp_use_support', 'gs_pmp_use_reviews', 'gs_pmp_use_donate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_plugin_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('_plugin_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('_plugin_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_plugin_details');

