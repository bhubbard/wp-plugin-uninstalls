-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crefs_comment_redirect', 'crefs_get_dofollow', 'crefs_post_type', 'crefs_prevent_lq', 'crefs_miscellaneous', 'crefs_get_ten_posts', 'crefs_sm_integration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('comment_refs_metas', 'cl_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('comment_refs_metas', 'cl_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('comment_refs_metas', 'cl_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('comment_refs_metas', 'cl_data');

