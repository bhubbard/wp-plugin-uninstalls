#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webgains_ads_widget_settings'

# Delete Transients
wp transient delete 'settings_errors'

