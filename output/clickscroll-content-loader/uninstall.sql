-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cscl_post_type', 'cscl_exclude_post', 'cscl_include_post', 'cscl_terms', 'cscl_taxonomy', 'cscl_order', 'cscl_orderby', 'cscl_show_after', 'cscl_featured_image_width', 'cscl_columns', 'cscl_author_post', 'cscl_show_content', 'cscl_trigger', 'cscl_view_type', 'cscl_hide_title', 'cscl_title_length', 'cscl_hide_content', 'cscl_content_length', 'cscl_hide_image', 'cscl_hide_category', 'cscl_hide_author', 'cscl_hide_date', 'cscl_applied_link_on_whole_box', 'cscl_read_more_text', 'cscl_not_found_text', 'cscl_featured_image_height', 'cscl_author_image', 'cscl_date_image', 'cscl_loader_image', 'cscl_show_search', 'cscl_btn_text');

