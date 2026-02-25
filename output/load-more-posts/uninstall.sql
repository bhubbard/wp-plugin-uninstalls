-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_load_posts_date', 'wp_load_posts_comment', 'wp_load_post_category', 'wp_load_default_col', 'wp_post_per_page', 'wp_load_more_btn_Txt', 'wp_load_more_Bg_color', 'wp_load_more_Tx_color', 'wp_load_more_Hbg_color', 'wp_load_more_Htx_color', 'wp_load_less_Btn', 'wp_hide_btn_Txt', 'wp_post_excerpt_content');

