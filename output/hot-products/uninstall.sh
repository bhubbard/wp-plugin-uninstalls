#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_hotproducts'
wp option delete 'hotproducts_text'
wp option delete 'show_flame'
wp option delete 'text_background_colour'
wp option delete 'text_colour'
wp option delete 'enable_hotproducts_archive'
wp option delete 'hotproducts_text_archive'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hotproductscount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hotproductscount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hotproductscount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hotproductscount'"
