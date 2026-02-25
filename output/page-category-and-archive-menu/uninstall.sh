#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgcatmenu_pagelink_id'
wp option delete 'pgcatmenu_pagelist_id'
wp option delete 'pgcatmenu_catlink_id'
wp option delete 'pgcatmenu_categorylist_id'
wp option delete 'pgcatmenu_arclink_id'
wp option delete 'pgcatmenu_archivelist_id'
wp option delete 'pgcatmenu_font_size'
wp option delete 'pgcatmenu_line_spacing'
wp option delete 'pgcatmenu_border_size'
wp option delete 'pgcatmenu_border_color'
wp option delete 'pgcatmenu_padding_size_x'
wp option delete 'pgcatmenu_padding_size_y'
wp option delete 'pgcatmenu_padding_size_c'
wp option delete 'pgcatmenu_background_color'
wp option delete 'pgcatmenu_menulink_color'
wp option delete 'pgcatmenu_menulink_color_v'
wp option delete 'pgcatmenu_menulink_color_h'

