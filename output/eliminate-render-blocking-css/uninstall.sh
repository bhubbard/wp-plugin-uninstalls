#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'erbcss_settings'

# Delete Transients
wp transient delete 'erbcss_api_user'

