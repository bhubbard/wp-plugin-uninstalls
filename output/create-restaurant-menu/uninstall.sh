#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storename'
wp option delete 'menutitlefontsize'
wp option delete 'menuotherfontsize'
wp option delete 'otherbuttonbgcolor'
wp option delete 'currencysymb'
wp option delete 'jquery'
wp option delete 'allergens'
wp option delete 'allergensfontsize'
wp option delete 'allergensfontcolor'
wp option delete 'bootstrap_minjs'
wp option delete 'fontawesome_mincss'
wp option delete 'bootstrap_mincss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
