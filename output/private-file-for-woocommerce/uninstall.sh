#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'pffw_shared_page_options'
wp option delete 'shared_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pffw_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pffw_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pffw_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pffw_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pffw_private_file_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pffw_private_file_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pffw_private_file_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pffw_private_file_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pffw_private_file_download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pffw_private_file_download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pffw_private_file_download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pffw_private_file_download_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pffw_private_page_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pffw_private_page_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pffw_private_page_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pffw_private_page_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pffw_directory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pffw_directory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pffw_directory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pffw_directory'"
