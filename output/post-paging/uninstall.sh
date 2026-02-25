#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_paging_background_color_transparent'
wp option delete 'post_paging_background_color'
wp option delete 'post_paging_use_image'
wp option delete 'post_paging_show_title'
wp option delete 'post_paging_prev_post_text'
wp option delete 'post_paging_next_post_text'
wp option delete 'post_paging_images_width'
wp option delete 'post_paging_prev_post_image'
wp option delete 'post_paging_next_post_image'
wp option delete 'post_paging_position'
wp option delete 'post_paging_hover_color'
wp option delete 'post_paging_text_decoration'
wp option delete 'post_paging_text_color'
wp option delete 'post_paging_font_family'
wp option delete 'post_paging_font_size'

