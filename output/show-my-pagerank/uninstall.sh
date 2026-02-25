#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_pagerank_picture_width'
wp option delete 'my_pagerank_text_color'
wp option delete 'my_pagerank_font_size'
wp option delete 'my_pagerank_caption'
wp option delete 'my_pagerank_append_post'

