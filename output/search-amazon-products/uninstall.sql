-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aws_api_key', 'aws_secret_key', 'aws_associate_tag', 'aws_search_asin_flag', 'aws_search_parent_asin_flag', 'aws_search_image_flag', 'aws_search_title_flag', 'aws_search_manufacturer_flag', 'aws_search_product_price_flag', 'aws_search_category_flag', 'aws_search_price_flag', 'aws_search_response_group', 'aws_search_condition_flag', 'aws_search_text_class', 'aws_search_category_class', 'aws_search_minmax_class', 'aws_search_condition_class', 'aws_search_button_class');

