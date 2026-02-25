-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('al_version', 'al-branding');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ld_adaptive_learning_stats', '_sfwd-quizzes', 'ld_al_pre_req_course_perc', '_sfwd-courses-levels', '_sfwd-courses', 'sfwd-courses_course_level', 'rating_action', '_sfwd_courses');
DELETE FROM wp_usermeta WHERE meta_key IN ('ld_adaptive_learning_stats', '_sfwd-quizzes', 'ld_al_pre_req_course_perc', '_sfwd-courses-levels', '_sfwd-courses', 'sfwd-courses_course_level', 'rating_action', '_sfwd_courses');
DELETE FROM wp_termmeta WHERE meta_key IN ('ld_adaptive_learning_stats', '_sfwd-quizzes', 'ld_al_pre_req_course_perc', '_sfwd-courses-levels', '_sfwd-courses', 'sfwd-courses_course_level', 'rating_action', '_sfwd_courses');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ld_adaptive_learning_stats', '_sfwd-quizzes', 'ld_al_pre_req_course_perc', '_sfwd-courses-levels', '_sfwd-courses', 'sfwd-courses_course_level', 'rating_action', '_sfwd_courses');

