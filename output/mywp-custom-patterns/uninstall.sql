-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mywp_custom_pattern_post_id_ref');
DELETE FROM wp_usermeta WHERE meta_key IN ('mywp_custom_pattern_post_id_ref');
DELETE FROM wp_termmeta WHERE meta_key IN ('mywp_custom_pattern_post_id_ref');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mywp_custom_pattern_post_id_ref');

