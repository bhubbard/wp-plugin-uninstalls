-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bintro_enabled', 'bintro_from', 'bintro_settings_heading', 'bintro_settings_content', 'bintro_page_permalink', 'bintro_show_heading', 'bintro_show_content', 'bintro_show_for', 'bintro_show_on_pages', 'bintro_show_on_home', 'bintro_heading_tag', 'bintro_style_intro', 'bintro_size_heading', 'bintro_style_heading', 'bintro_size_content', 'bintro_style_content', 'bintro_at_loop_count', 'bintro_debug');

