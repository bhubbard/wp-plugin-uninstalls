#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pjspic_plugin_settings'

# Delete Transients
wp transient delete 'pjspic_some_transient'

