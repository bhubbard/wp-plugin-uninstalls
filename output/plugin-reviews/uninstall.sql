-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_reviews_num_chars', 'plugin_reviews_read_more_text', 'plugin_reviews_hide_nav_dots', 'plugin_reviews_text_color', 'plugin_reviews_background_color', 'plugin_reviews_font_size', 'plugin_reviews_border_style', 'plugin_reviews_border_color', 'plugin_reviews_avatar_width', 'plugin_reviews_avatar_height', 'plugin_reviews_padding', 'plugin_reviews_margin', 'wr_reviews_flush_transient', 'plugin_reviews_activation_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plugin_reviews_dismissed_starfish_notice', 'plugin_reviews_dismissed_review_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('plugin_reviews_dismissed_starfish_notice', 'plugin_reviews_dismissed_review_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('plugin_reviews_dismissed_starfish_notice', 'plugin_reviews_dismissed_review_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plugin_reviews_dismissed_starfish_notice', 'plugin_reviews_dismissed_review_notice');

