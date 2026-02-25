#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nuway_widget_id'

# Delete Transients
wp transient delete 'nuway_error'

