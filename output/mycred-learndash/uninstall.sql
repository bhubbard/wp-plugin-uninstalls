-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allow_buy_course_pts', 'learndash_mycred_exchange_rate', 'learndash_point_type', 'learndash_allow_leaderboard');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('allow_buy_course_pts', '_sfwd-courses', 'score_quiz_based', 'myCred_badges_override', 'lesson_id', 'course_id', 'leaderboard_default', 'leaderboard_course_based', 'leaderboard_lesson_based', 'leaderboard_topic_based', 'leaderboard_quiz_based', 'leaderboard_shortcode', 'myCred_point', 'myCred_override_hook', 'myCred_point_type', 'myCred_quiz_point_fail', 'min_percentage', 'min_percentage_range', 'earn_points', 'times', 'max_percentage');
DELETE FROM wp_usermeta WHERE meta_key IN ('allow_buy_course_pts', '_sfwd-courses', 'score_quiz_based', 'myCred_badges_override', 'lesson_id', 'course_id', 'leaderboard_default', 'leaderboard_course_based', 'leaderboard_lesson_based', 'leaderboard_topic_based', 'leaderboard_quiz_based', 'leaderboard_shortcode', 'myCred_point', 'myCred_override_hook', 'myCred_point_type', 'myCred_quiz_point_fail', 'min_percentage', 'min_percentage_range', 'earn_points', 'times', 'max_percentage');
DELETE FROM wp_termmeta WHERE meta_key IN ('allow_buy_course_pts', '_sfwd-courses', 'score_quiz_based', 'myCred_badges_override', 'lesson_id', 'course_id', 'leaderboard_default', 'leaderboard_course_based', 'leaderboard_lesson_based', 'leaderboard_topic_based', 'leaderboard_quiz_based', 'leaderboard_shortcode', 'myCred_point', 'myCred_override_hook', 'myCred_point_type', 'myCred_quiz_point_fail', 'min_percentage', 'min_percentage_range', 'earn_points', 'times', 'max_percentage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('allow_buy_course_pts', '_sfwd-courses', 'score_quiz_based', 'myCred_badges_override', 'lesson_id', 'course_id', 'leaderboard_default', 'leaderboard_course_based', 'leaderboard_lesson_based', 'leaderboard_topic_based', 'leaderboard_quiz_based', 'leaderboard_shortcode', 'myCred_point', 'myCred_override_hook', 'myCred_point_type', 'myCred_quiz_point_fail', 'min_percentage', 'min_percentage_range', 'earn_points', 'times', 'max_percentage');

