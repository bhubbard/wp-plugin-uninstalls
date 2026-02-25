#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fallback_url'
wp option delete 'fallback_text'
wp option delete 'fallback_desc'
wp option delete 'fallback_title'
wp option delete 'fallback_type'
wp option delete 'fallback_style'
wp option delete 'fallback_color'
wp option delete 'fallback_height'
wp option delete 'fallback_width'
wp option delete 'fallback_customcss'
wp option delete 'fallback_opennewwindow'
wp option delete 'fallback_nofollow'
wp option delete 'fallback_textcolor'
wp option delete 'fallback_customvi'
wp option delete 'fallback_customho'
wp option delete 'fallback_donated'

