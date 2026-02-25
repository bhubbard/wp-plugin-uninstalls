-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_et_pb_use_builder', '_tutor_is_public_course', '_tutor_enable_qa', '_is_preview', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_et_pb_use_builder', '_tutor_is_public_course', '_tutor_enable_qa', '_is_preview', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_et_pb_use_builder', '_tutor_is_public_course', '_tutor_enable_qa', '_is_preview', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_et_pb_use_builder', '_tutor_is_public_course', '_tutor_enable_qa', '_is_preview', '_thumbnail_id');

