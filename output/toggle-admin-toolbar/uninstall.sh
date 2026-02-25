#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpm_tat_options'
wp option delete 'tat_options'

# Delete Transients
wp transient delete 'tat_settings_cache'

