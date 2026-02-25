-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgm_notice_get_pro_version_dismissed', 'pgm_portfolio_initial_width', 'pgm_portfolio_initial_height', 'pgm_portfolio_margin', 'pgm_portfolio_padding', 'pgm_portfolio_overlay_font_color', 'pgm_portfolio_frame_color', 'pgm_portfolio_overlay_color', 'pgm_disable_hover_display', 'pgm_disable_post_link', 'pgm_portfolio_display_mode', 'pgm_display_per_row', 'pgm_display_min_width', 'pgm_display_max_width');

