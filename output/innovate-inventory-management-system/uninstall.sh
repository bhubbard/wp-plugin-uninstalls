#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_parent_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_parent_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_parent_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_parent_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_child_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_child_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_child_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_child_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
