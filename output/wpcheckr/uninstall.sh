#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcheckr-site-connected'
wp option delete 'wpcheckr_settings'
wp option delete 'wpcheckr-secret-string'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

