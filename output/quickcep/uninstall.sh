#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickcep_settings'
wp option delete 'woocommerce_quickcep_version'

# Delete Transients
wp transient delete 'is_quickcep_plugin_outdated'

