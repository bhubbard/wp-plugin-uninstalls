-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smct_category_page_id', 'smct_display_page_titles', 'smct_number_of_columns', 'smct_category_display_layout', 'smct_area_page_id', 'smct_custom_category_archive_slug', 'smct_custom_areas_archive_slug', 'smct_width_of_pages', 'smct_archive_container_class', 'smct_page_title_source', 'smct_alternate_page_title', 'smct_category_page_title', 'smct_area_page_title', 'smct_category_page_name', 'smct_area_page_name', 'smct_paginate_archives', 'smct_custom_css');

