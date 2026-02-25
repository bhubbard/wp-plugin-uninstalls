#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailplus_shipmate_api_url'
wp option delete 'mailplus_shipmate_api_key'
wp option delete 'mailplus_shipmate_api_token'
wp option delete 'mailplus_shipmate_shop_token'
wp option delete 'mailplus_shipmate_integration_complete'
wp option delete 'mailplus_shipmate_woo_activation_token'
wp option delete 'mailplus_shipmate_front_url'
wp option delete 'shipmate_woo_activation_token'
wp option delete 'shipmate_shop_token'
wp option delete 'shipmate_api_url'
wp option delete 'mailplus_shipmate_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mailplus_remote_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mailplus_remote_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mailplus_remote_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mailplus_remote_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mailplus_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mailplus_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mailplus_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mailplus_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mailplus_carrier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mailplus_carrier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mailplus_carrier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mailplus_carrier'"
