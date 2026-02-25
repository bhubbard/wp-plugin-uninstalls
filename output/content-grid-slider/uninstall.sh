#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content-slider-main-heading-color'
wp option delete 'content-slider-normal-font-color'
wp option delete 'content-slider-active-slide-title-color'
wp option delete 'content-slider-selected-slide-bgcolor'
wp option delete 'content-slider-selected-slide-bordercolor'
wp option delete 'content-slider-active-slide-bgcolor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_slider_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_slider_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_slider_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_slider_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_slider_url_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_slider_url_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_slider_url_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_slider_url_target'"
