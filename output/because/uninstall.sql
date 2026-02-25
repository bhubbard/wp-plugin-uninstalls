-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('social_polling_active_field', '_social_polling_answer_one_field', '_social_polling_answer_two_field', 'social_polling_question_field', 'social_polling_answer_one_field', 'social_polling_answer_one_image_id', 'social_polling_answer_two_field', 'social_polling_answer_two_image_id', '_my_meta_value_key', 'vote_choice', 'subscribed');
DELETE FROM wp_usermeta WHERE meta_key IN ('social_polling_active_field', '_social_polling_answer_one_field', '_social_polling_answer_two_field', 'social_polling_question_field', 'social_polling_answer_one_field', 'social_polling_answer_one_image_id', 'social_polling_answer_two_field', 'social_polling_answer_two_image_id', '_my_meta_value_key', 'vote_choice', 'subscribed');
DELETE FROM wp_termmeta WHERE meta_key IN ('social_polling_active_field', '_social_polling_answer_one_field', '_social_polling_answer_two_field', 'social_polling_question_field', 'social_polling_answer_one_field', 'social_polling_answer_one_image_id', 'social_polling_answer_two_field', 'social_polling_answer_two_image_id', '_my_meta_value_key', 'vote_choice', 'subscribed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('social_polling_active_field', '_social_polling_answer_one_field', '_social_polling_answer_two_field', 'social_polling_question_field', 'social_polling_answer_one_field', 'social_polling_answer_one_image_id', 'social_polling_answer_two_field', 'social_polling_answer_two_image_id', '_my_meta_value_key', 'vote_choice', 'subscribed');

