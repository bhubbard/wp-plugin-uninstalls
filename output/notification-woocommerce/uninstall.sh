#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcn_settings'

# Delete Transients
wp transient delete 'wcn_is_notification_sent'
wp transient delete 'wcn_admin_notification'

