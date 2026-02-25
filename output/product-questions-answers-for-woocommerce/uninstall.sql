-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ets_load_more_button', 'ets_product_q_qa_list_length', 'ets_load_more_button_name', 'ets_product_qa_paging_type', 'ets_qa_approve');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ets_question_answer');
DELETE FROM wp_usermeta WHERE meta_key IN ('ets_question_answer');
DELETE FROM wp_termmeta WHERE meta_key IN ('ets_question_answer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ets_question_answer');

