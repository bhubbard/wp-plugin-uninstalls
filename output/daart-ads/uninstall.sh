#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daart_ads_token'

# Delete Transients
wp transient delete 'daart_error_token'
wp transient delete 'error_token_uuid'

