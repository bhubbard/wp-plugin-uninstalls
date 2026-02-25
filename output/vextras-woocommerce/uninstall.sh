#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vextras_woocommerce_version'
wp option delete 'vextras_woocommerce_plugin_do_activation_redirect'
wp option delete 'vextras-woocommerce'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vextras-woocommerce-%'"
wp option delete 'woocommerce_default_catalog_orderby'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vextras_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vextras_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vextras_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vextras_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vextras_woocommerce_tracking_numbers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vextras_woocommerce_tracking_numbers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vextras_woocommerce_tracking_numbers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vextras_woocommerce_tracking_numbers'"
