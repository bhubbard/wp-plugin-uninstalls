#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brevwoo_brevo_api_key'
wp option delete 'brevwoo_default_lists'
wp option delete 'brevwoo_order_status'
wp option delete 'brevwoo_debug_logging'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brevwoo_product_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brevwoo_product_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brevwoo_product_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brevwoo_product_lists'"
