#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpbeatfe_notice_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_current_edit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_offset'"
wp option delete 'default_product_cat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_id'"
wp option delete 'simpbeatfe_current_edit'
wp option delete 'simpbeatfe_status'
wp option delete 'simpbeatfe_pr_offset'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
