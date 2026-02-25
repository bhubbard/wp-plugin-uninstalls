#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'botfirewall_enabled'
wp option delete 'botfirewall_allowed_bots'
wp option delete 'botfirewall_settings'
wp option delete 'botfirewall_customization'

