#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedspace_activated'
wp option delete 'feedspace_options'
wp option delete 'feedspace_preserve_settings_on_uninstall'

# Delete Transients
wp transient delete 'feedspace_block_assets'
wp transient delete 'feedspace_plugin_path'

