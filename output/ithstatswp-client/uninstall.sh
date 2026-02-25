#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ith_auth_key'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'

