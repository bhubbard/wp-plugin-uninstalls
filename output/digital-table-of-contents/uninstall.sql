-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dtoc_compatibility', 'dtoc_dashboard_options', 'dtoc_dashboard', 'dtoc_incontent', 'dtoc_incontent_mobile', 'dtoc_incontent_tablet', 'dtoc_shortcode', 'dtoc_shortcode_mobile', 'dtoc_shortcode_tablet', 'dtoc_sliding_sticky', 'dtoc_sliding_sticky_mobile', 'dtoc_sliding_sticky_tablet', 'dtoc_floating', 'dtoc_floating_mobile', 'dtoc_floating_tablet', 'dtoc_meta_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dtoc_options', 'saswp_custom_schema_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dtoc_options', 'saswp_custom_schema_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dtoc_options', 'saswp_custom_schema_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dtoc_options', 'saswp_custom_schema_field');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

