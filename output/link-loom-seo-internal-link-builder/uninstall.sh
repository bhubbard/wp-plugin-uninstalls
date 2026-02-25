#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkloom_settings'
wp option delete 'linkloom_tracked_transients'

# Delete Transients
wp transient delete 'linkloom_progress'

