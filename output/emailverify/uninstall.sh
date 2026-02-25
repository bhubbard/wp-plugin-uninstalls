#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailverifyio_settings'

# Delete Transients
wp transient delete 'ev_account_info'
wp transient delete 'ev_api_validation'

