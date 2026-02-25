-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('footerize_pre_content', 'footerize_pre_content_posts', 'footerize_pre_content_pages', 'footerize_exclude_from_pre', 'footerize_pos_content', 'footerize_pos_content_posts', 'footerize_pos_content_pages', 'footerize_exclude_from_pos', 'footerize_shortcode_content');

