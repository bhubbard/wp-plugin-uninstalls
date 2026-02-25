-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptam_options', 'custom-typekit-fonts', 'wpseo_titles', 'post-type-archive-mapping-404', 'ptam_error_message', 'post-type-archive-mapping');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_post_type_mapped', '_term_mapped', 'dlx_app_nag_dismissed', '_term_archive_mapping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_post_type_mapped', '_term_mapped', 'dlx_app_nag_dismissed', '_term_archive_mapping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_post_type_mapped', '_term_mapped', 'dlx_app_nag_dismissed', '_term_archive_mapping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_post_type_mapped', '_term_mapped', 'dlx_app_nag_dismissed', '_term_archive_mapping');

