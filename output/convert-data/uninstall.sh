#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'convert_data_taxonomy'
wp option delete 'convert_data_post_type'
wp option delete 'convert_data_order'
wp option delete 'convert_data_orderby'
wp option delete 'convert_data_posts'
wp option delete 'convert_data_custom_field_1'
wp option delete 'convert_data_custom_field_2'
wp option delete 'convert_data_custom_field_3'
wp option delete 'convert_data_custom_field_4'
wp option delete 'convert_data_custom_field_5'
wp option delete 'convert_data_categories_exclude'
wp option delete 'convert_data_view_just_parent'
wp option delete 'convert_data_type'
wp option delete 'convert_data_prefix'
wp option delete 'convert_data_view_source_categories'
wp option delete 'convert_data_view_source_posts_ids'
wp option delete 'convert_data_view_source_posts_info'

