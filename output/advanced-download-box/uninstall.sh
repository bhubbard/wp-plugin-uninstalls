#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advanced_download_box_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advanced_download_box_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advanced_download_box_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advanced_download_box_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advanced_download_box_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advanced_download_box_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advanced_download_box_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advanced_download_box_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advanced_download_box_links'"
