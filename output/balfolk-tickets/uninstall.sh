#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bft_products_ids_custom_checkbox'
wp option delete 'bft_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BFT Custom Product Additional Check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BFT Custom Product Additional Check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BFT Custom Product Additional Check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BFT Custom Product Additional Check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BFT Additional Check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BFT Additional Check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BFT Additional Check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BFT Additional Check'"
