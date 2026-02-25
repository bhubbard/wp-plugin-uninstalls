#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beacon_authorized'
wp option delete 'beacon_connected'
wp option delete 'widget_beacon_widget'
wp option delete 'beacon_promote_options'

