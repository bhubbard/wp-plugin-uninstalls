-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faq_display_mode', 'cat_h_color', 'ques_bg_color', 'ques_txt_color', 'ques_bdr_color', 'ans_bg_color', 'ans_txt_color', 'ans_bdr_color', 'faq_icon_color', 'act_icon_color');

