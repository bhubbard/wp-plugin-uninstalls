#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epda_version'
wp option delete 'epda_version_first'
wp option delete 'epda_config'

# Delete Transients
wp transient delete '_epda_plugin_activated'

