-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tred_panel_widgets_to_show', 'tred_get_access_modes_existent', 'tred_get_students_number_all_courses', 'tred_get_lessons_topics_quizzes_number');
DELETE FROM wp_options WHERE option_name LIKE 'tred_get_students_number_%';
DELETE FROM wp_options WHERE option_name LIKE '%_days';
DELETE FROM wp_options WHERE option_name LIKE 'tred_learndash_get_item_all_time_activity_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ld_price_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ld_price_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ld_price_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ld_price_type');

