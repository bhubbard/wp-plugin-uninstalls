-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_cat_slider_installed', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('categories', 'selection_type', 'selected_categories', 'limit_number', 'include_child', 'hide_empty', 'hide_image', 'hide_content', 'hide_button', 'hide_icon', 'hide_name', 'hide_count', 'hide_nav', 'hide_paginate', 'hide_border', 'hover_style', 'theme', 'autoplay', 'rtl', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('categories', 'selection_type', 'selected_categories', 'limit_number', 'include_child', 'hide_empty', 'hide_image', 'hide_content', 'hide_button', 'hide_icon', 'hide_name', 'hide_count', 'hide_nav', 'hide_paginate', 'hide_border', 'hover_style', 'theme', 'autoplay', 'rtl', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('categories', 'selection_type', 'selected_categories', 'limit_number', 'include_child', 'hide_empty', 'hide_image', 'hide_content', 'hide_button', 'hide_icon', 'hide_name', 'hide_count', 'hide_nav', 'hide_paginate', 'hide_border', 'hover_style', 'theme', 'autoplay', 'rtl', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('categories', 'selection_type', 'selected_categories', 'limit_number', 'include_child', 'hide_empty', 'hide_image', 'hide_content', 'hide_button', 'hide_icon', 'hide_name', 'hide_count', 'hide_nav', 'hide_paginate', 'hide_border', 'hover_style', 'theme', 'autoplay', 'rtl', 'thumbnail_id');

