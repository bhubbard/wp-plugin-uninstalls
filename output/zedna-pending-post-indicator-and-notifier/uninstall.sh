#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notificationemails'
wp option delete 'approvednotification'
wp option delete 'declinednotification'

