#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'statify-blacklist'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'statify_data'

