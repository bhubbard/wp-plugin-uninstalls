#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'DIANA_GREENCONNECT_client_id'
wp option delete 'DIANA_GREENCONNECT_client_secret'

# Delete Transients
wp transient delete 'DIANA_GREENCONNECT_api_token'

