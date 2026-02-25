-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_lite_accounts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ba_re_', 'ba_quest_font_color', 'ba_quest_font_size', 'ba_ans_font_size', 'ba_ans_font_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('ba_re_', 'ba_quest_font_color', 'ba_quest_font_size', 'ba_ans_font_size', 'ba_ans_font_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('ba_re_', 'ba_quest_font_color', 'ba_quest_font_size', 'ba_ans_font_size', 'ba_ans_font_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ba_re_', 'ba_quest_font_color', 'ba_quest_font_size', 'ba_ans_font_size', 'ba_ans_font_color');

