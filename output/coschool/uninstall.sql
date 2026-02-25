-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('links_updated_date_format', '_certificate_html', 'coschool_version', 'coschool_install_time', 'coschool_initial_calls', 'coschool_docs_json', 'pluggable-blog-json', 'coschool_email');
DELETE FROM wp_options WHERE option_name LIKE 'cx-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', '_thumbnail_id', 'course_banner', 'course_id', 'course_faq', 'coschool_user_status', 'lesson_banner', 'quiz_banner', 'questions', '_viewing_as', 'login_info', '_coschool_avatar', 'course_review', 'phone_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', '_thumbnail_id', 'course_banner', 'course_id', 'course_faq', 'coschool_user_status', 'lesson_banner', 'quiz_banner', 'questions', '_viewing_as', 'login_info', '_coschool_avatar', 'course_review', 'phone_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', '_thumbnail_id', 'course_banner', 'course_id', 'course_faq', 'coschool_user_status', 'lesson_banner', 'quiz_banner', 'questions', '_viewing_as', 'login_info', '_coschool_avatar', 'course_review', 'phone_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', '_thumbnail_id', 'course_banner', 'course_id', 'course_faq', 'coschool_user_status', 'lesson_banner', 'quiz_banner', 'questions', '_viewing_as', 'login_info', '_coschool_avatar', 'course_review', 'phone_number');

