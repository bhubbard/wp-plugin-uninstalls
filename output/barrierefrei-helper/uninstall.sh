#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'barrierefrei_helper_font_size'
wp option delete 'barrierefrei_helper_color_choice'
wp option delete 'barrierefrei_helper_contrast'
wp option delete 'barrierefrei_helper_toc_enabled'
wp option delete 'barrierefrei_helper_toc_tag'
wp option delete 'barrierefrei_helper_last_cache_clear'

