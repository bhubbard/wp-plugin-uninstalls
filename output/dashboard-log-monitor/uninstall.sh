#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard_widget_options'

# Delete Transients
wp transient delete 'access-log-monitoring-lines'

