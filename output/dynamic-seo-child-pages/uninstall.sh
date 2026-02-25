#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'dscp_sub_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscp_base_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscp_base_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscp_base_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscp_base_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscp_variable_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscp_variable_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscp_variable_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscp_variable_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscp_sitemap_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscp_sitemap_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscp_sitemap_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscp_sitemap_pages'"
