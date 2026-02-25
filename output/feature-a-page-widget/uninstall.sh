#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fpw_options'

# Delete Transients
wp transient delete 'fpw_widget_select_list'

