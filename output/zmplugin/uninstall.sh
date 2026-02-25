#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_block'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'zmtempformlocation'
wp transient delete 'settings_errors'
wp transient delete 'zm_blockpatterns_data_cache'
wp transient delete 'zm_blockpatterns_category_cache'
wp transient delete 'zmdesignexplorer_cache'

