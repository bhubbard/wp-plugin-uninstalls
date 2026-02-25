#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpm_connector_connections'
wp option delete 'wpm_connector_hub_url'
wp option delete 'wpm_connector_token_hash'
wp option delete 'wpm_connector_user_id'

# Delete Transients
wp transient delete 'wpm_connector_pairing'

