-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scca_content', 'scca_background_color', 'scca_font_color', 'scca_font_size', 'scca_padding', 'scca_border_color', 'scca_border_width', 'scca_rounded_corners', 'scca_before_or_after', 'scca_posts_or_pages');

