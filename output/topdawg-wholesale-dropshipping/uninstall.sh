#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'topdawg_merchant_id'
wp option delete 'topdawg_api_key'
wp option delete 'topdawg_credentials_sent'

# Delete Transients
wp transient delete 'topdawg_plain_api_key_temp'
wp transient delete 'topdawg_plugin_deactivating'

