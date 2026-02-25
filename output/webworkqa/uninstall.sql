-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webwork_clients');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webwork_has_answer', 'webwork_response_count', 'webwork_tried', 'webwork_problem_text', 'webwork_remote_class_url', 'webwork_remote_problem_url', 'webwork_remote_user_problem_url', 'webwork_is_anonymous', 'webwork_emailable_url', 'webwork_random_seed', 'webwork_notify_addresses', 'webwork_student_name', 'webwork_question_id', 'webwork_vote_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('webwork_has_answer', 'webwork_response_count', 'webwork_tried', 'webwork_problem_text', 'webwork_remote_class_url', 'webwork_remote_problem_url', 'webwork_remote_user_problem_url', 'webwork_is_anonymous', 'webwork_emailable_url', 'webwork_random_seed', 'webwork_notify_addresses', 'webwork_student_name', 'webwork_question_id', 'webwork_vote_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('webwork_has_answer', 'webwork_response_count', 'webwork_tried', 'webwork_problem_text', 'webwork_remote_class_url', 'webwork_remote_problem_url', 'webwork_remote_user_problem_url', 'webwork_is_anonymous', 'webwork_emailable_url', 'webwork_random_seed', 'webwork_notify_addresses', 'webwork_student_name', 'webwork_question_id', 'webwork_vote_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webwork_has_answer', 'webwork_response_count', 'webwork_tried', 'webwork_problem_text', 'webwork_remote_class_url', 'webwork_remote_problem_url', 'webwork_remote_user_problem_url', 'webwork_is_anonymous', 'webwork_emailable_url', 'webwork_random_seed', 'webwork_notify_addresses', 'webwork_student_name', 'webwork_question_id', 'webwork_vote_count');

