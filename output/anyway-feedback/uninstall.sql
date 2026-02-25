-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afb_setting', 'afb_style', 'afb_post_types', 'afb_hide_default_controller', 'afb_comment', 'afb_controller', 'afb_db_version', 'afb_ga');
DELETE FROM wp_options WHERE option_name LIKE 'afb_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_afb_post_type', '_afb_object_id', '_afb_source_comment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_afb_post_type', '_afb_object_id', '_afb_source_comment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_afb_post_type', '_afb_object_id', '_afb_source_comment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_afb_post_type', '_afb_object_id', '_afb_source_comment_id');

