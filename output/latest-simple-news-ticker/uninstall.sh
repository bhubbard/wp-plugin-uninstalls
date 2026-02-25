#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tickers_title'
wp option delete 'per_page_item'
wp option delete 'post_type'
wp option delete 'title_color'
wp option delete 'items_color'
wp option delete 'title_bg_color'
wp option delete 'items_bg_color'
wp option delete 'effect_type'

