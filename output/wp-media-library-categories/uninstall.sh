#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmlc_settings'

# Delete Transients
wp transient delete 'wpmlc-admin-activation-notice'

