#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'artidomo_pod_version'
wp option delete 'artidomo_pod_installed_at'
wp option delete 'artidomo_connected'
wp option delete 'artidomo_pod_migrated'
wp option delete 'artidomo_shop_id'
wp option delete 'artidomo_api_key_id'
wp option delete 'artidomo_consumer_key'
wp option delete 'artidomo_consumer_secret'
wp option delete 'artidomo_webhook_secret'
wp option delete 'artidomo_connected_at'
wp option delete 'artidomo_webhook_id'
wp option delete 'artidomo_detected_plugins'
wp option delete 'artidomo_last_detection'

# Delete Transients
wp transient delete 'artidomo_connection_token'
wp transient delete 'artidomo_plugin_update_info'
wp transient delete 'update_plugins'
wp transient delete 'artidomo_pod_custom_update'
wp transient delete 'artidomo_pod_wporg_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_artidomo_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_artidomo_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_artidomo_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_artidomo_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_artidomo_printfilename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_artidomo_printfilename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_artidomo_printfilename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_artidomo_printfilename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_artidomo_personalization_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_artidomo_personalization_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_artidomo_personalization_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_artidomo_personalization_provider'"
