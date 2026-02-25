#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'media_defaults_inserting'
wp option delete 'media_defaults_galleries'
wp option delete 'media_defaults_plugin_version'

# Delete Transients
wp transient delete 'media_defaults_activated'

