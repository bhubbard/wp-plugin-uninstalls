#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wma_login_with_email'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_umf_uploaded_file_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_umf_uploaded_file_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_umf_uploaded_file_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_umf_uploaded_file_name_%'"
