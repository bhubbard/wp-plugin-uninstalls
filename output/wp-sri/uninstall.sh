#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%excluded_hashes'"
wp option delete 'wp_sri_known_hashes'
wp option delete 'wp_sri_excluded_hashes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%known_hashes'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_sri_hashes_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_sri_hashes_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_sri_hashes_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_sri_hashes_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetools_page_wp_sri_admincolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetools_page_wp_sri_admincolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetools_page_wp_sri_admincolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetools_page_wp_sri_admincolumnshidden'"
