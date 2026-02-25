-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s7n_tag_display_auto_display', 's7n_tag_display_bg_color', 's7n_tag_display_text_color', 's7n_tag_display_border_color', 's7n_tag_display_hover_bg_color', 's7n_tag_display_hover_text_color', 's7n_tag_display_title', 's7n_tag_display_template', 's7n_tag_display_disable_wp_tags', 's7n_tag_display_show_in_posts', 's7n_tag_display_show_in_pages', 's7n_tag_display_show_in_cpt', 's7n_tag_display_post_template', 's7n_tag_display_page_template', 's7n_tag_display_cpt_template', 's7n_tag_display_custom_taxonomies');

