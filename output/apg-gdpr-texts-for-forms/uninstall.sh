#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apg_rgpd'

# Delete Transients
wp transient delete 'apg_rgpd_jetpack'
wp transient delete 'apg_rgpd_plugin'

