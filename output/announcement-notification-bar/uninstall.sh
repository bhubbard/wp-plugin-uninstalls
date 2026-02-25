#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'announcement_notification_bar_options'

# Delete Transients
wp transient delete 'announcement_notification_bar_activation_notice'

