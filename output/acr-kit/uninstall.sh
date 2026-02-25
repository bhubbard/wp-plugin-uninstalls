#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acr_kit_version'
wp option delete 'acr_kit_unsubscribe_page_id'
wp option delete 'acr_kit_connected_by'
wp option delete 'acr_kit_api_token'
wp option delete 'acr_kit_app_token'

# Delete Transients
wp transient delete 'acr_kit_connection_token'

