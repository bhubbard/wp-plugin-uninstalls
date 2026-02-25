#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's7n_tag_display_auto_display'
wp option delete 's7n_tag_display_bg_color'
wp option delete 's7n_tag_display_text_color'
wp option delete 's7n_tag_display_border_color'
wp option delete 's7n_tag_display_hover_bg_color'
wp option delete 's7n_tag_display_hover_text_color'
wp option delete 's7n_tag_display_title'
wp option delete 's7n_tag_display_template'
wp option delete 's7n_tag_display_disable_wp_tags'
wp option delete 's7n_tag_display_show_in_posts'
wp option delete 's7n_tag_display_show_in_pages'
wp option delete 's7n_tag_display_show_in_cpt'
wp option delete 's7n_tag_display_post_template'
wp option delete 's7n_tag_display_page_template'
wp option delete 's7n_tag_display_cpt_template'
wp option delete 's7n_tag_display_custom_taxonomies'

