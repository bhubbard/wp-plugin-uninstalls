#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'assistio_plugin_activation_redirect'
wp option delete 'assistio_plugin_application_password'
wp option delete 'assistiobot_oauth_settings'
wp option delete 'assistio_plugin_initial_setup_completed'
wp option delete 'recently_activated'
wp option delete 'assistio_missing_dependencies'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
