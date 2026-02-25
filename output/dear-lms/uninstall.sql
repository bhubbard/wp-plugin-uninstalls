-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dearlms_rewrite_version', 'dearlms_flush_rewrite_rules', 'dearlms_enable_progress', 'dearlms_url_structure', 'dearlms_primary_color', 'dearlms_secondary_color', 'dearlms_text_color', 'dearlms_activated', 'dearlms_version');
DELETE FROM wp_options WHERE option_name LIKE 'dearlms_new_lesson_course_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'dearlms_new_topic_lesson_id_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lesson_course_id', '_topic_lesson_id', '_lesson_course', '_course_level', '_course_duration', '_course_price', '_students_enrolled', '_topic_content_type', '_topic_duration', '_lesson_duration', '_lesson_video_url', '_lesson_resources', '_topic_lesson', '_lesson_order', '_topic_order', '_topic_is_introduction', '_topic_video_url', '_is_introduction_topic', '_lesson_introduction_topic', '_course_students');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lesson_course_id', '_topic_lesson_id', '_lesson_course', '_course_level', '_course_duration', '_course_price', '_students_enrolled', '_topic_content_type', '_topic_duration', '_lesson_duration', '_lesson_video_url', '_lesson_resources', '_topic_lesson', '_lesson_order', '_topic_order', '_topic_is_introduction', '_topic_video_url', '_is_introduction_topic', '_lesson_introduction_topic', '_course_students');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lesson_course_id', '_topic_lesson_id', '_lesson_course', '_course_level', '_course_duration', '_course_price', '_students_enrolled', '_topic_content_type', '_topic_duration', '_lesson_duration', '_lesson_video_url', '_lesson_resources', '_topic_lesson', '_lesson_order', '_topic_order', '_topic_is_introduction', '_topic_video_url', '_is_introduction_topic', '_lesson_introduction_topic', '_course_students');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lesson_course_id', '_topic_lesson_id', '_lesson_course', '_course_level', '_course_duration', '_course_price', '_students_enrolled', '_topic_content_type', '_topic_duration', '_lesson_duration', '_lesson_video_url', '_lesson_resources', '_topic_lesson', '_lesson_order', '_topic_order', '_topic_is_introduction', '_topic_video_url', '_is_introduction_topic', '_lesson_introduction_topic', '_course_students');

