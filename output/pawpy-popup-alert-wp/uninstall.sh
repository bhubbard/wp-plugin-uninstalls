#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PAWPY_popup_alert_display_news'
wp option delete 'PAWPY_popup_alert_display_color'
wp option delete 'PAWPY_popup_alert_post_type'

