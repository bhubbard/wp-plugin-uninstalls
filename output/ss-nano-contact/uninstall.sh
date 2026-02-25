#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'ss-nano-contact'

# Delete Transients
wp transient delete 'wp_plugin_dependencies_deactivate_plugins'
wp transient delete 'wp_plugin_dependencies_plugin_data'

