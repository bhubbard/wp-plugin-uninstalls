#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwcp_jodo_widget_apikey'
wp option delete 'jwcp_jodo_widget_servicekey'
wp option delete 'jwcp_jodo_widget_target'
wp option delete 'jwcp_jodo_widget_visible'
wp option delete 'jwcp_jodo_widget_display'
wp option delete 'jwcp_jodo_widget_theme'

# Delete Transients
wp transient delete 'settings_errors'

