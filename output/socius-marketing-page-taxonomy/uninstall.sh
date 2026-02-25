#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smct_category_page_id'
wp option delete 'smct_display_page_titles'
wp option delete 'smct_number_of_columns'
wp option delete 'smct_category_display_layout'
wp option delete 'smct_area_page_id'
wp option delete 'smct_custom_category_archive_slug'
wp option delete 'smct_custom_areas_archive_slug'
wp option delete 'smct_width_of_pages'
wp option delete 'smct_archive_container_class'
wp option delete 'smct_page_title_source'
wp option delete 'smct_alternate_page_title'
wp option delete 'smct_category_page_title'
wp option delete 'smct_area_page_title'
wp option delete 'smct_category_page_name'
wp option delete 'smct_area_page_name'
wp option delete 'smct_paginate_archives'
wp option delete 'smct_custom_css'

