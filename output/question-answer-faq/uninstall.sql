-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mideal_faq_setting_email', 'mideal_faq_setting_email2', 'mideal_faq_setting_avatar_smallsize', 'mideal_faq_setting_dont_show_label', 'mideal_faq_setting_dont_connect_bootstrap', 'mideal_faq_setting_recaptcha', 'mideal_faq_setting_recaptcha_key', 'mideal_faq_setting_recaptcha_key_secret', 'mideal_faq_setting_answer_name', 'mideal_faq_setting_pagination_number', 'mideal_faq_setting_answer_image', 'mideal_faq_setting_question_background', 'mideal_faq_setting_question_color_text', 'mideal_faq_setting_answer_background', 'mideal_faq_setting_answer_color_text', 'mideal_faq_setting_button_color_text', 'mideal_faq_setting_button_background', 'mideal_faq_setting_button_big_size', 'mideal_faq_setting_pagination_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mideal_faq_answer', 'mideal_faq_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('mideal_faq_answer', 'mideal_faq_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('mideal_faq_answer', 'mideal_faq_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mideal_faq_answer', 'mideal_faq_email');

