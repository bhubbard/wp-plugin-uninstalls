#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbpuos_settings'

# Delete Transients
wp transient delete 'users_online'

