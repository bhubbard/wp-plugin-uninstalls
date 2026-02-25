-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('read_more_color', 'wpauthor_social_color', 'wpauthor_text_font_size', 'wpauthor_social_font_size', 'wpauthor_social_top_margin', 'wpauthor_designation', 'wpauthor_title', 'wpauthor_bio', 'wpauthor_label');

