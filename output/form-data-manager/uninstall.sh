#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfdm_plugin_tm_fr_rtg'

# Delete Transients
wp transient delete 'wpfdm_plugin_activated'

