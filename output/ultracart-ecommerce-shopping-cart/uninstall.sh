#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ucwp_plugin_browser_key'
wp option delete 'ucwp_plugin_webhook_oid'
wp option delete 'ucwp_plugin_basic_username'
wp option delete 'ucwp_plugin_basic_password'
wp option delete 'ucwp_plugin_merchant_id'
wp option delete 'ucwp_plugin_random'
wp option delete 'ucwp_plugin_access_token'
wp option delete 'ucwp_plugin_refresh_token'
wp option delete 'ucwp_disable_passive_branding'
wp option delete 'ucwp_enable_ultracart_analytics'
wp option delete 'ucwp_enable_ultracart_analytics_recording'
wp option delete 'ucwp_secure_host_name'

