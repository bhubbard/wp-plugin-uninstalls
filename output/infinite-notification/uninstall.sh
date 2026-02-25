#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notification-limit'
wp option delete 'notification-position'
wp option delete 'notification-switch'
wp option delete 'notification-cookie-limit'
wp option delete 'time-interval'
wp option delete 'powered-by-switch'
wp option delete 'notification-sound-switch'

