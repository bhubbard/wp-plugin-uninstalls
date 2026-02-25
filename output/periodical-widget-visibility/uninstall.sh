#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_periodical-widget-visibility'

# Delete Transients
wp transient delete 'periodical-widget-visibility'

