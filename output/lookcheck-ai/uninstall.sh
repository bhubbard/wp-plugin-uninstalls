#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lookcheck_license_key'
wp option delete 'lookcheck_settings'

# Delete Transients
wp transient delete 'lookcheck_api_status'

