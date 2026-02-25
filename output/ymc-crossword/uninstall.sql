-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ymc_bg_stage', 'ymc_bg_color', 'ymc_border_color', 'ymc_text_color', 'ymc_counter_color', 'ymc_question_color', 'ymc_bg_correct_ansver', 'ymc_bg_incorrect_ansver', 'ymc_align_question', 'ymc_mute', 'ymc_popup', 'ymc_header_popup', 'ymc_content_popup', 'ymc_theme_crossword', 'ymc_crossword');
DELETE FROM wp_usermeta WHERE meta_key IN ('ymc_bg_stage', 'ymc_bg_color', 'ymc_border_color', 'ymc_text_color', 'ymc_counter_color', 'ymc_question_color', 'ymc_bg_correct_ansver', 'ymc_bg_incorrect_ansver', 'ymc_align_question', 'ymc_mute', 'ymc_popup', 'ymc_header_popup', 'ymc_content_popup', 'ymc_theme_crossword', 'ymc_crossword');
DELETE FROM wp_termmeta WHERE meta_key IN ('ymc_bg_stage', 'ymc_bg_color', 'ymc_border_color', 'ymc_text_color', 'ymc_counter_color', 'ymc_question_color', 'ymc_bg_correct_ansver', 'ymc_bg_incorrect_ansver', 'ymc_align_question', 'ymc_mute', 'ymc_popup', 'ymc_header_popup', 'ymc_content_popup', 'ymc_theme_crossword', 'ymc_crossword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ymc_bg_stage', 'ymc_bg_color', 'ymc_border_color', 'ymc_text_color', 'ymc_counter_color', 'ymc_question_color', 'ymc_bg_correct_ansver', 'ymc_bg_incorrect_ansver', 'ymc_align_question', 'ymc_mute', 'ymc_popup', 'ymc_header_popup', 'ymc_content_popup', 'ymc_theme_crossword', 'ymc_crossword');

