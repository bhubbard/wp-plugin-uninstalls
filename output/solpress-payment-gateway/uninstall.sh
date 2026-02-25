#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solpress_memo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solpress_memo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solpress_memo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solpress_memo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solpress_signature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solpress_signature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solpress_signature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solpress_signature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solpress_cluster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solpress_cluster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solpress_cluster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solpress_cluster'"
