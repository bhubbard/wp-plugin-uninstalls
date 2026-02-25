#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'putler_connector_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_updated'"
wp option delete 'putler_connector_authenticated'
wp option delete 'putler_connector_temp_token'
wp option delete 'putler_connector_putler_temp_token'
wp option delete '_wpc_activation_redirect'
wp option delete 'active_sitewide_plugins'
wp option delete '_wpc_update_redirect_2911'
wp option delete '_wpc_update_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_amount'"
