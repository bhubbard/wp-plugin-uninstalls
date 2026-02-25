-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ests_its_text_color', 'ests_its_bg_color', 'ests_its_text_style', 'ests_its_text_gap', 'ests_its_text_size', 'ests_its_word_limit', 'ests_its_text_dir', 'ests_its_text_dur', 'ests_its_img_visible', 'ests_its_text_style1', 'ests_its_post_type', 'ests_its_cat_ids', 'ests_its_cat_name', 'ests_text_color', 'ests_text_size', 'ests_text_style', 'ests_ft_speed', 'ests_bk_speed', 'ests_start_delay', 'ests_end_delay', 'ests_st_hight', 'ests_loop', 'ests_text', 'ests_ts_text_color', 'ests_ts_text_size', 'ests_ts_text_style', 'ests_ts_text_gap', 'ests_ts_text_dir', 'ests_ts_text_dur', 'ests_ts_text', 'ests_ts_start_visible');

