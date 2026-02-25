#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_mwall_delete_cropped_messages_success' OR option_name LIKE '_site_transient_%_mwall_delete_cropped_messages_success'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_mwall_delete_cropped_messages_error' OR option_name LIKE '_site_transient_%_mwall_delete_cropped_messages_error'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grid-elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grid-elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grid-elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grid-elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grid-columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grid-columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grid-columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grid-columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mci-category-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mci-category-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mci-category-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mci-category-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mci-tag-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mci-tag-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mci-tag-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mci-tag-url'"
