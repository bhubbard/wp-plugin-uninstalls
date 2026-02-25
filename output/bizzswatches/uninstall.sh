#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_secret_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhooks_%'"
wp option delete 'bizzswatches_settings'

# Delete Transients
wp transient delete 'codersaiful_browse_plugins'
wp transient delete 'bizzswatches_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bizzswatches_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bizzswatches_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bizzswatches_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bizzswatches_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bizzswatches_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bizzswatches_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bizzswatches_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bizzswatches_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bizzswatches_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bizzswatches_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bizzswatches_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bizzswatches_settings'"
