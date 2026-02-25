-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('npt_post_type_count', 'npt_taxonomy_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('npt_post_type', 'npt_taxonomy');
DELETE FROM wp_usermeta WHERE meta_key IN ('npt_post_type', 'npt_taxonomy');
DELETE FROM wp_termmeta WHERE meta_key IN ('npt_post_type', 'npt_taxonomy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('npt_post_type', 'npt_taxonomy');

