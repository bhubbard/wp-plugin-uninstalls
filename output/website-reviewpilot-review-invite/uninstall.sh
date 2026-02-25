#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'website_reviewpilot_license_key'
wp option delete 'website_reviewpilot_sender_email'
wp option delete 'active_sitewide_plugins'
wp option delete 'website_reviewpilot_status'
wp option delete 'website_reviewpilot_use_style'
wp option delete 'reviewpilot_fields_submitted'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_path_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_path_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_path_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_path_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_product_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_product_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_product_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_product_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_reviewpilot_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_reviewpilot_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_reviewpilot_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_reviewpilot_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
