#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fpwl_filter_with_list'
wp option delete 'fpwl_search_bar_show'
wp option delete 'fpwl_category_show'
wp option delete 'fpwl_filter_cat_text'
wp option delete 'fpwl_tag_show'
wp option delete 'fpwl_filter_tag_text'
wp option delete 'fpwl_filter_feature_image_display'
wp option delete 'fpwl_filter_category_display'
wp option delete 'fpwl_filter_content_display'
wp option delete 'fpwl_filter_date_display'
wp option delete 'fpwl_filter_author_display'
wp option delete 'fpwl_filter_per_page_display'
wp option delete 'artical_filter_per_page_display'

