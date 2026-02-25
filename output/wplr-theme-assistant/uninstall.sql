-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplr_hide_posttypes', 'wplr_posttype', 'wplr_posttype_status', 'wplr_posttype_hierarchical', 'wplr_posttype_reuse', 'wplr_posttype_mode', 'wplr_posttype_meta', 'wplr_taxonomy', 'wplr_taxonomy_reuse', 'wplr_taxonomy_tags', 'wplr_taxonomy_tags_reuse');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id');

