#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ethos_stats_options'
wp option delete 'panelid'

# Delete Transients
wp transient delete 'ethos_stats'

