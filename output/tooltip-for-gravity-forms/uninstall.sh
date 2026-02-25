#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tooltip_plugin_version'
wp option delete 'gravity_tooltip_options'

# Delete Transients
wp transient delete 'tooltip_update_checker'
wp transient delete 'gravitychecker'

