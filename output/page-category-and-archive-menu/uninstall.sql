-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgcatmenu_pagelink_id', 'pgcatmenu_pagelist_id', 'pgcatmenu_catlink_id', 'pgcatmenu_categorylist_id', 'pgcatmenu_arclink_id', 'pgcatmenu_archivelist_id', 'pgcatmenu_font_size', 'pgcatmenu_line_spacing', 'pgcatmenu_border_size', 'pgcatmenu_border_color', 'pgcatmenu_padding_size_x', 'pgcatmenu_padding_size_y', 'pgcatmenu_padding_size_c', 'pgcatmenu_background_color', 'pgcatmenu_menulink_color', 'pgcatmenu_menulink_color_v', 'pgcatmenu_menulink_color_h');

