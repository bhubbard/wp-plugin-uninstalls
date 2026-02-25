#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tstats_settings'

# Delete Transients
wp transient delete 'translation_stats_activate'
wp transient delete 'update_plugins'

