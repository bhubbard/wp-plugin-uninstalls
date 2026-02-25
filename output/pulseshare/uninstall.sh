#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pulseshare_options'

# Delete Transients
wp transient delete 'pulseshare_access_token'

