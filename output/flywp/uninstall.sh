#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flywp_email_settings'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_themes'
wp transient delete 'update_core'

