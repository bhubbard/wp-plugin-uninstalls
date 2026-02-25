-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pj_post_thumb_linkto', 'pj_post_thumb_size', 'pj_custom_post_thumb_width', 'pj_custom_post_thumb_height', 'pj_custom_post_thumb_crop', 'pj_post_thumb_class');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pj_post_thumbnail');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pj_post_thumbnail');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pj_post_thumbnail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pj_post_thumbnail');

