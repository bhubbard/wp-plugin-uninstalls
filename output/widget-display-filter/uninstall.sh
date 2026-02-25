#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_display_filter'

# Delete Transients
wp transient delete 'widget_display_filter_notice'
wp transient delete 'widget_display_filter_tab'

