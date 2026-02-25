-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('schema_faqs_ques_ans_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('schema_faqs_ques_ans_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('schema_faqs_ques_ans_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('schema_faqs_ques_ans_data');

