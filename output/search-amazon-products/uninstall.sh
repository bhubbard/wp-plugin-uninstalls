#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aws_api_key'
wp option delete 'aws_secret_key'
wp option delete 'aws_associate_tag'
wp option delete 'aws_search_asin_flag'
wp option delete 'aws_search_parent_asin_flag'
wp option delete 'aws_search_image_flag'
wp option delete 'aws_search_title_flag'
wp option delete 'aws_search_manufacturer_flag'
wp option delete 'aws_search_product_price_flag'
wp option delete 'aws_search_category_flag'
wp option delete 'aws_search_price_flag'
wp option delete 'aws_search_response_group'
wp option delete 'aws_search_condition_flag'
wp option delete 'aws_search_text_class'
wp option delete 'aws_search_category_class'
wp option delete 'aws_search_minmax_class'
wp option delete 'aws_search_condition_class'
wp option delete 'aws_search_button_class'

