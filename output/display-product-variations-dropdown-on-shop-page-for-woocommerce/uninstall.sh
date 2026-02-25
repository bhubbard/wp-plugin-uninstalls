#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpvdw_enable_setting'
wp option delete 'dpvdw_exclude_cat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dpvdw_exclude_product_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dpvdw_exclude_product_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dpvdw_exclude_product_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dpvdw_exclude_product_single'"
