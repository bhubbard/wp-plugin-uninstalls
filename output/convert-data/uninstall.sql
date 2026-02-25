-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('convert_data_taxonomy', 'convert_data_post_type', 'convert_data_order', 'convert_data_orderby', 'convert_data_posts', 'convert_data_custom_field_1', 'convert_data_custom_field_2', 'convert_data_custom_field_3', 'convert_data_custom_field_4', 'convert_data_custom_field_5', 'convert_data_categories_exclude', 'convert_data_view_just_parent', 'convert_data_type', 'convert_data_prefix', 'convert_data_view_source_categories', 'convert_data_view_source_posts_ids', 'convert_data_view_source_posts_info');

