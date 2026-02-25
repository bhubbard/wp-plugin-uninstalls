#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cargo_tracking_for_woocommerce'
wp option delete 'cargo_tracking_for_woocommerce_emailCheck'
wp option delete 'cargo_tracking_for_woocommerce_emailHeading'
wp option delete 'cargo_tracking_for_woocommerce_emailSubject'
wp option delete 'cargo_tracking_for_woocommerce_emailDescription'
wp option delete 'cargo_tracking_for_woocommerce_emailTemplates'
wp option delete 'cargo_tracking_for_woocommerce_disablePluginStatus'
wp option delete 'cargo_tracking_for_woocommerce_deletePluginData'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_tracking_for_woocommerce-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_tracking_for_woocommerce-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_tracking_for_woocommerce-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_tracking_for_woocommerce-data'"
