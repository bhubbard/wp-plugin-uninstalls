#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quick_related_post_max_number'
wp option delete 'quick_related_post_item_per_slide'
wp option delete 'quick_related_post_headline'
wp option delete 'quick_related_post_title_font_size'
wp option delete 'quick_related_post_title_font_color'
wp option delete 'quick_related_post_title'
wp option delete 'quick_related_post_thumbnail'
wp option delete 'quick_related_post_author'
wp option delete 'quick_related_post_date'
wp option delete 'quick_related_post_excerpt'
wp option delete 'quick_related_post_readmore'
wp option delete 'quick_related_post_style_default'
wp option delete 'quick_related_post_custom_style'
wp option delete 'quick_related_post_version'

