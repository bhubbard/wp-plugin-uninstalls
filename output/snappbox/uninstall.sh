#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snappbox_api'
wp option delete 'snappbox_store_phone'
wp option delete 'snappbox_store_name'
wp option delete 'woocommerce_snappbox_shipping_method_settings'
wp option delete 'snappbox_yandex_deactivation_goal'

# Delete Transients
wp transient delete 'woocommerce_shipping_zones_cache'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_longitude'"
