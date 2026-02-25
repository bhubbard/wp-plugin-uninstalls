#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'krpp_posts_per_page'
wp option delete 'krpp_columns'
wp option delete 'krpp_show_image'
wp option delete 'krpp_show_readmore'
wp option delete 'krpp_readmore_text'
wp option delete 'krpp_auto_display_location'
wp option delete 'krpp_auto_display_margin'
wp option delete 'krpp_auto_display_bgcolor'
wp option delete 'krpp_auto_display_padding'

