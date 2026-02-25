-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fl_builder_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_llms_free_lesson', '_et_pb_use_builder');
DELETE FROM wp_usermeta WHERE meta_key IN ('_llms_free_lesson', '_et_pb_use_builder');
DELETE FROM wp_termmeta WHERE meta_key IN ('_llms_free_lesson', '_et_pb_use_builder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_llms_free_lesson', '_et_pb_use_builder');

