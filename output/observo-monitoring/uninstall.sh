#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'observo_sysinfo_code'

# Delete Transients
wp transient delete 'observo-monitoring-admin-notice-install'

