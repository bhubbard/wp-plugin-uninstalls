-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SMUZSFTW_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wssf_social_tw_enable', 'wssf_tw_username', 'wssf_tw_consumer_key', 'wssf_tw_consumer_secret', 'wssf_results_per_feed_tw', 'wssf_enable_feed', 'wssf_feed_width', 'wssf_hide_text_content', 'wssf_enable_links_to_post', 'wssf_select_layout', 'wssf_bg_color', 'wssf_text_color', 'wssf_select_gfont', 'wssf_enable_post_date', 'wssf_enable_social_icon', 'wssf_enable_display_picture', 'wssf_results_per_feed', 'wssf_link_in_new_tab', 'wssf_words_limit_tw');
DELETE FROM wp_usermeta WHERE meta_key IN ('wssf_social_tw_enable', 'wssf_tw_username', 'wssf_tw_consumer_key', 'wssf_tw_consumer_secret', 'wssf_results_per_feed_tw', 'wssf_enable_feed', 'wssf_feed_width', 'wssf_hide_text_content', 'wssf_enable_links_to_post', 'wssf_select_layout', 'wssf_bg_color', 'wssf_text_color', 'wssf_select_gfont', 'wssf_enable_post_date', 'wssf_enable_social_icon', 'wssf_enable_display_picture', 'wssf_results_per_feed', 'wssf_link_in_new_tab', 'wssf_words_limit_tw');
DELETE FROM wp_termmeta WHERE meta_key IN ('wssf_social_tw_enable', 'wssf_tw_username', 'wssf_tw_consumer_key', 'wssf_tw_consumer_secret', 'wssf_results_per_feed_tw', 'wssf_enable_feed', 'wssf_feed_width', 'wssf_hide_text_content', 'wssf_enable_links_to_post', 'wssf_select_layout', 'wssf_bg_color', 'wssf_text_color', 'wssf_select_gfont', 'wssf_enable_post_date', 'wssf_enable_social_icon', 'wssf_enable_display_picture', 'wssf_results_per_feed', 'wssf_link_in_new_tab', 'wssf_words_limit_tw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wssf_social_tw_enable', 'wssf_tw_username', 'wssf_tw_consumer_key', 'wssf_tw_consumer_secret', 'wssf_results_per_feed_tw', 'wssf_enable_feed', 'wssf_feed_width', 'wssf_hide_text_content', 'wssf_enable_links_to_post', 'wssf_select_layout', 'wssf_bg_color', 'wssf_text_color', 'wssf_select_gfont', 'wssf_enable_post_date', 'wssf_enable_social_icon', 'wssf_enable_display_picture', 'wssf_results_per_feed', 'wssf_link_in_new_tab', 'wssf_words_limit_tw');

