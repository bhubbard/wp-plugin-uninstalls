-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fpwl_filter_with_list', 'fpwl_search_bar_show', 'fpwl_category_show', 'fpwl_filter_cat_text', 'fpwl_tag_show', 'fpwl_filter_tag_text', 'fpwl_filter_feature_image_display', 'fpwl_filter_category_display', 'fpwl_filter_content_display', 'fpwl_filter_date_display', 'fpwl_filter_author_display', 'fpwl_filter_per_page_display', 'artical_filter_per_page_display');

