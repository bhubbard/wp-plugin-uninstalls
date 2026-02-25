#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_valid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_valid_expires'"
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foobox_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foobox_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foobox_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foobox_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foobox_include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foobox_include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foobox_include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foobox_include'"
