#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_secret_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhooks_%'"
wp option delete 'bizzorder_settings'

# Delete Transients
wp transient delete 'codersaiful_browse_plugins'

# Clear Cron Jobs
wp cron event delete 'bizzorder_check_preorders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bizzorder_is_preorder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bizzorder_is_preorder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bizzorder_is_preorder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bizzorder_is_preorder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bizzorder_preorder_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bizzorder_preorder_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bizzorder_preorder_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bizzorder_preorder_date'"
