-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('footer_pages', 'template', 'logo', 'subheadline', 'question', 'option1', 'option2', 'total_questions', 'wrapBG', 'paragraph', 'formHeadline', 'formSubHeadline', 'redirect_url', 'showName', 'submitbutton', 'firstbutton', 'secondbutton', 'e_heading', 'e_subheading1', 'e_subheading2', 'e_subheading3', 'agree_text', 'warning1', 'warning2', 'typography', 'mainheadline', 'footer', 'background', 'buttonurl', 'buttontext', 'boxstyle', 'autoresponder', 'question_1', 'option1_1', 'option2_1', 'question_2', 'option1_2', 'option2_2', 'question_3', 'option1_3', 'option2_3', '_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('footer_pages', 'template', 'logo', 'subheadline', 'question', 'option1', 'option2', 'total_questions', 'wrapBG', 'paragraph', 'formHeadline', 'formSubHeadline', 'redirect_url', 'showName', 'submitbutton', 'firstbutton', 'secondbutton', 'e_heading', 'e_subheading1', 'e_subheading2', 'e_subheading3', 'agree_text', 'warning1', 'warning2', 'typography', 'mainheadline', 'footer', 'background', 'buttonurl', 'buttontext', 'boxstyle', 'autoresponder', 'question_1', 'option1_1', 'option2_1', 'question_2', 'option1_2', 'option2_2', 'question_3', 'option1_3', 'option2_3', '_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('footer_pages', 'template', 'logo', 'subheadline', 'question', 'option1', 'option2', 'total_questions', 'wrapBG', 'paragraph', 'formHeadline', 'formSubHeadline', 'redirect_url', 'showName', 'submitbutton', 'firstbutton', 'secondbutton', 'e_heading', 'e_subheading1', 'e_subheading2', 'e_subheading3', 'agree_text', 'warning1', 'warning2', 'typography', 'mainheadline', 'footer', 'background', 'buttonurl', 'buttontext', 'boxstyle', 'autoresponder', 'question_1', 'option1_1', 'option2_1', 'question_2', 'option1_2', 'option2_2', 'question_3', 'option1_3', 'option2_3', '_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('footer_pages', 'template', 'logo', 'subheadline', 'question', 'option1', 'option2', 'total_questions', 'wrapBG', 'paragraph', 'formHeadline', 'formSubHeadline', 'redirect_url', 'showName', 'submitbutton', 'firstbutton', 'secondbutton', 'e_heading', 'e_subheading1', 'e_subheading2', 'e_subheading3', 'agree_text', 'warning1', 'warning2', 'typography', 'mainheadline', 'footer', 'background', 'buttonurl', 'buttontext', 'boxstyle', 'autoresponder', 'question_1', 'option1_1', 'option2_1', 'question_2', 'option1_2', 'option2_2', 'question_3', 'option1_3', 'option2_3', '_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'question_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'question_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'question_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'question_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'option1_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'option1_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'option1_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'option1_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'option2_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'option2_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'option2_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'option2_%';

