#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgmp_options'
wp option delete 'widget_slickgooglemap'
wp option delete 'sgmp_persisted_shortcodes'

# Delete Transients
wp transient delete 'sgmp_update_routine'
wp transient delete 'sgmp_layers_markers_export'

