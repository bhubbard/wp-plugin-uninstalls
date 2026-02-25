-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtoc_plugin_do_activation_redirect', 'rtoc_title', 'rtoc_title_display', 'rtoc_display', 'rtoc_exclude_post_toc', 'rtoc_exclude_page_toc', 'rtoc_initial_display', 'rtoc_headline_display', 'rtoc_open_text', 'rtoc_close_text', 'rtoc_font', 'rtoc_display_headline_amount', 'rtoc_list_h2_type', 'rtoc_list_h3_type', 'rtoc_color', 'rtoc_title_color', 'rtoc_text_color', 'rtoc_border_color', 'rtoc_h2_color', 'rtoc_h3_color', 'rtoc_back_button_color', 'rtoc_frame_design', 'rtoc_animation', 'rtoc_scroll_animation', 'rtoc_back_toc_button', 'rtoc_display_top', 'rtoc_back_text', 'rtoc_back_button_position', 'rtoc_back_button_vertical_position', 'rtoc_exclude_css', 'rtoc_exclude_openclose', 'rtoc_back_toc_pc', 'rtoc_category_added', 'rtoc_back_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('productID', '_jinr_category', '_jinr_category_edit');
DELETE FROM wp_usermeta WHERE meta_key IN ('productID', '_jinr_category', '_jinr_category_edit');
DELETE FROM wp_termmeta WHERE meta_key IN ('productID', '_jinr_category', '_jinr_category_edit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('productID', '_jinr_category', '_jinr_category_edit');

