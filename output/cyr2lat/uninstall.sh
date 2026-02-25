#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_completed' OR option_name LIKE '_site_transient_%_process_completed'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
