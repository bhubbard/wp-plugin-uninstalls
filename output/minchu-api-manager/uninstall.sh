#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'minchu_api_key'
wp option delete 'page_minchu_list'
wp option delete 'page_minchu_detail'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
