#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wt_wishlist_button_style_settings'
wp option delete 'wt_wishlist_table_settings'
wp option delete 'wt_wishlist_general_settings'
wp option delete 'wt_webtoffee-wishlist_page_id'
wp option delete 'default_value_added'

