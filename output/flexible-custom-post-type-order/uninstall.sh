#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fcpto_options'
wp option delete 'order_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom_order_type_snv_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom_order_type_snv_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom_order_type_snv_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom_order_type_snv_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom_order_type_dsnv_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom_order_type_dsnv_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom_order_type_dsnv_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom_order_type_dsnv_%'"
