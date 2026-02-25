#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'summits_alert_message'
wp option delete 'summits_alert_theme'
wp option delete 'summits_alert_css'
wp option delete 'summits_alert_center_message'
wp option delete 'summit_alert_message'

