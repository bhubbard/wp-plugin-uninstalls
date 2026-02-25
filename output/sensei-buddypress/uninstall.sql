-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddypress_sensei_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_course_woocommerce_product', '_lesson_course', '_attached_media', '_lesson_length', '_lesson_complexity', 'bp_course_group', 'attached_course_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_course_woocommerce_product', '_lesson_course', '_attached_media', '_lesson_length', '_lesson_complexity', 'bp_course_group', 'attached_course_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_course_woocommerce_product', '_lesson_course', '_attached_media', '_lesson_length', '_lesson_complexity', 'bp_course_group', 'attached_course_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_course_woocommerce_product', '_lesson_course', '_attached_media', '_lesson_length', '_lesson_complexity', 'bp_course_group', 'attached_course_id');

