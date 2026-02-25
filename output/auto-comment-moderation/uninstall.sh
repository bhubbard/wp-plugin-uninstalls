#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modhs_settings'

# Delete Transients
wp transient delete 'modhs-admin-notice-activate'

