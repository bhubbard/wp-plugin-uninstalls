#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip2location_widget_language'
wp option delete 'ip2location_widget_type'
wp option delete 'ip2location_widget_debug_log_enabled'

