#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'akkedli_api_key'
wp option delete 'akkedli_webhook_url'
wp option delete 'akkedli_api_key_validated'
wp option delete 'akkedli_connected_at'
wp option delete 'akkedli_store_domain'
wp option delete 'akkedli_send_pending'
wp option delete 'akkedli_send_processing'

