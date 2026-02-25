#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nr_popoutbutton_bgcolor'
wp option delete 'nr_popoutbutton_window_width'
wp option delete 'nr_popoutbutton_window_height'
wp option delete 'nr_vmplayer_window_width'
wp option delete 'nr_vmplayer_window_height'
wp option delete 'nr_vmplayer_stream_url'
wp option delete 'nr_vmplayer_color'
wp option delete 'nr_vmplayer_product_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
