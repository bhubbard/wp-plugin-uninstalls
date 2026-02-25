#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webability_options'

# Delete Transients
wp transient delete 'webability_widget_cache'

