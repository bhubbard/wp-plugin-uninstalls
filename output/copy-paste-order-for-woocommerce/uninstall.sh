#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpofw_settings'
wp option delete 'cpofw_plugin_version'
wp option delete 'cpofw_database_version'

# Delete Transients
wp transient delete 'cpofw_installing'

