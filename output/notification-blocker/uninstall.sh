#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notification_blocker_active'
wp option delete 'notification_blocker_ui_style'
wp option delete 'notification_blocker_hidden_notices'

