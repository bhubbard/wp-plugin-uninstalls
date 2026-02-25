#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fig_downloaded'
wp option delete 'fig_unsplash_api'
wp option delete 'fig_thumb_defaut_size_width'
wp option delete 'fig_thumb_defaut_size_height'
wp option delete 'fig_font_family'
wp option delete 'fig_pixabay_api'
wp option delete 'fig_pixabay_safesearch'
wp option delete 'fig_post_type'

