-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rmwr-notice-dismissed-alert', 'rm_text', 'rl_text', 'rmwr_smooth_scroll_free', 'rmwr_print_expand_free', 'rmwr_font_weight', 'rmwr_text_color', 'rmwr_text_hover_color', 'rmwr_background_color', 'rmwr_padding', 'rmwr_border_bottom', 'rmwr_border_bottom_color');

